.class Lorg/telegram/ui/Components/ChatActivityEnterView$21;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final backgroundRect:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$BxrjI8Dcgz58182q2VvjBkN1wo4(Lorg/telegram/ui/Components/ChatActivityEnterView$21;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$3(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J58DPwm3Mll088eAxnaiMEZ8IP8(Lorg/telegram/ui/Components/ChatActivityEnterView$21;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$6(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L-pH1M7qecADxVn1uNnEq4hGDRg()V
    .locals 7

    .line 3053
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$S2Ffvfpc5hTyKNXwiWRfzi41RvI()V
    .locals 7

    .line 2914
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bZpbdQglIjGncnN_kzOHnO3pf6c(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$cI8v8LZw1WDdxE8j20HMaexDWco(ZII)V
    .locals 7

    .line 2914
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    move v2, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$kgnlZGfxP1GDhGFysnDNs7mI2z4(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$kq0kqtjOiQS41JyTble1MfHrVm8(Lorg/telegram/ui/Components/ChatActivityEnterView$21;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$5(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wnxnPG0-enHalT_Xkx9d3A3fdPM(ZII)V
    .locals 7

    .line 3053
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    move v2, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$yZahGBX18lLn9-jHrwEGRO98LXc(Lorg/telegram/ui/Components/ChatActivityEnterView$21;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$0(Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2872
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3120
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->paint:Landroid/graphics/Paint;

    .line 3121
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->backgroundRect:Landroid/graphics/RectF;

    return-void
.end method

.method private synthetic lambda$onTouchEvent$0(Ljava/lang/Long;)V
    .locals 7

    .line 2906
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIIJZ)Z

    return-void
.end method

.method private synthetic lambda$onTouchEvent$3(Ljava/lang/Long;)V
    .locals 7

    .line 2933
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIIJZ)Z

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 2

    .line 2943
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmoveToSendStateRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)V

    .line 2944
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(Ljava/lang/Long;)V
    .locals 7

    .line 3028
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIIJZ)Z

    return-void
.end method

.method private synthetic lambda$onTouchEvent$6(Ljava/lang/Long;)V
    .locals 7

    .line 3048
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIIJZ)Z

    return-void
.end method

.method private synthetic lambda$onTouchEvent$9()V
    .locals 2

    .line 3061
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmoveToSendStateRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)V

    .line 3062
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 3125
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaudioVideoButtonContainerForbidden(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3127
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexpandStickersButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexpandStickersButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3129
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexpandStickersButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    sub-float/2addr v1, v0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    .line 3133
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    .line 3134
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x42200000    # 40.0f

    .line 3135
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    .line 3136
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v4, v3, v2

    .line 3139
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    .line 3140
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    .line 3142
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v5, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3145
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3146
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->backgroundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3149
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2881
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisLiveComment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    .line 2887
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisLiveComment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2888
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraChooserItemOptions(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraChooserItemOptions(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2889
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2890
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraChooserItemOptions(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ItemOptions;->dispatchCapturedTouchEvent(Landroid/view/MotionEvent;)V

    return v2

    :cond_1
    move-object/from16 v4, p1

    .line 2894
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mcreateRecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 2895
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x3

    const v7, 0x7fffffff

    const-wide/16 v8, 0x0

    if-nez v1, :cond_16

    .line 2896
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2897
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcalledRecordRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2898
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputstartedDraggingX(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2899
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2900
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->needsPaidMessageAlert(IJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2901
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2902
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2904
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->toggleVideoRecordingPause()V

    .line 2905
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V

    invoke-static {v1, v4, v5, v3, v2}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return v3

    .line 2910
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v4, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v4, :cond_5

    move v15, v7

    goto :goto_0

    :cond_5
    move v15, v2

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v10 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIIJJ)V

    .line 2911
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputeffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto/16 :goto_3

    .line 2913
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2914
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v8

    new-instance v10, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda1;-><init>()V

    new-instance v11, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda2;

    invoke-direct {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda2;-><init>()V

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2916
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->needsPaidMessageAlert(IJ)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2917
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2918
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2919
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2921
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->toggleVideoRecordingPause()V

    goto :goto_1

    .line 2923
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2924
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcalledRecordRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2926
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaController;->toggleRecordingPause(Z)V

    .line 2927
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2928
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 2929
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2932
    :cond_b
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V

    invoke-static {v1, v4, v5, v3, v2}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return v3

    :cond_c
    move v1, v6

    .line 2937
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v4

    if-eqz v4, :cond_d

    move v7, v1

    goto :goto_2

    :cond_d
    move v7, v3

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v10, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const-wide/16 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    .line 2938
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2940
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2941
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    .line 2942
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmoveToSendStateRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)V

    const-wide/16 v4, 0xc8

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2947
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v3

    .line 2951
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_4

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2952
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    if-nez v4, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetuserInfo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    goto :goto_5

    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    :goto_5
    if-eqz v1, :cond_12

    .line 2953
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    if-eqz v4, :cond_14

    iget-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    if-eqz v1, :cond_14

    .line 2954
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    return v3

    .line 2958
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2959
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcalledRecordRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2960
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordAudioVideoRunnableStarted(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2961
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordAudioVideoRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v4, 0x96

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 2963
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordAudioVideoRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_6
    return v3

    :cond_16
    move v1, v6

    .line 2966
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v10, 0x5

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v6, v3, :cond_22

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v1, :cond_17

    goto/16 :goto_a

    .line 3067
    :cond_17
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_21

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3068
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 3069
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 3070
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v12

    if-eqz v12, :cond_18

    return v2

    .line 3073
    :cond_18
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v12

    invoke-virtual {v12, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setLockTranslation(F)I

    move-result v12

    if-ne v12, v6, :cond_19

    .line 3074
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mstartLockTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return v2

    .line 3077
    :cond_19
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setMovingCords(FF)V

    .line 3080
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstartedDraggingX(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1a

    .line 3081
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputstartedDraggingX(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 3082
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsizeNotifierLayout(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-double v12, v6

    const-wide v14, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v12, v14

    double-to-float v6, v12

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputdistCanMove(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 3083
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdistCanMove(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    cmpl-float v4, v4, v12

    if-lez v4, :cond_1a

    .line 3084
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputdistCanMove(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 3088
    :cond_1a
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaudioVideoButtonContainer(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v1, v4

    .line 3089
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstartedDraggingX(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    sub-float/2addr v1, v4

    .line 3090
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdistCanMove(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    div-float/2addr v1, v4

    add-float/2addr v1, v11

    .line 3091
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstartedDraggingX(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v5

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    cmpl-float v4, v1, v11

    if-lez v4, :cond_1b

    goto :goto_7

    :cond_1b
    cmpg-float v4, v1, v5

    if-gez v4, :cond_1c

    move v11, v5

    goto :goto_7

    :cond_1c
    move v11, v1

    .line 3097
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 3098
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->setSlideX(F)V

    .line 3100
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSlideToCancelProgress(F)V

    move v1, v11

    :cond_1e
    cmpl-float v1, v1, v5

    if-nez v1, :cond_21

    .line 3104
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3105
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetonFinishInitCameraRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 3106
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v4, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v4, :cond_1f

    move/from16 v16, v7

    goto :goto_8

    :cond_1f
    move/from16 v16, v2

    :goto_8
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v11 .. v20}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIIJJ)V

    .line 3107
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputeffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto :goto_9

    .line 3109
    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 3110
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v15, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const-wide/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v17}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    .line 3112
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 3113
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v10, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    :cond_21
    return v3

    .line 2967
    :cond_22
    :goto_a
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v1, :cond_26

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 2968
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    const v4, 0x3f333333    # 0.7f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_25

    .line 2969
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2970
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetonFinishInitCameraRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2971
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v4, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v4, :cond_23

    move/from16 v16, v7

    goto :goto_b

    :cond_23
    move/from16 v16, v2

    :goto_b
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v11 .. v20}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIIJJ)V

    .line 2972
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputeffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto :goto_c

    .line 2974
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2975
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v15, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const-wide/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v17}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    .line 2977
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmillisecondsRecorded(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    .line 2978
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2979
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v10, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    goto :goto_d

    .line 2981
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2982
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mstartLockTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :goto_d
    return v2

    .line 2986
    :cond_26
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v6

    if-eqz v6, :cond_27

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v6

    if-nez v6, :cond_28

    :cond_27
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2a

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2a

    .line 2987
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordAudioVideoRunnableStarted(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2988
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordAudioVideoRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_29
    return v2

    .line 2993
    :cond_2a
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaudioVideoButtonContainer(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    add-float/2addr v4, v6

    .line 2994
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstartedDraggingX(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    sub-float/2addr v4, v6

    .line 2995
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdistCanMove(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    div-float/2addr v4, v6

    add-float/2addr v4, v11

    float-to-double v11, v4

    const-wide v13, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v4, v11, v13

    if-gez v4, :cond_2d

    .line 2997
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2998
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetonFinishInitCameraRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2999
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v4, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v4, :cond_2b

    move/from16 v16, v7

    goto :goto_e

    :cond_2b
    move/from16 v16, v2

    :goto_e
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v11 .. v20}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIIJJ)V

    .line 3000
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputeffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto :goto_f

    .line 3002
    :cond_2c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 3003
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v15, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const-wide/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v17}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    .line 3005
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmillisecondsRecorded(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    .line 3006
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 3007
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v10, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    goto/16 :goto_14

    .line 3009
    :cond_2d
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordAudioVideoRunnableStarted(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3010
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordAudioVideoRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3011
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendVoiceEnabled(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendRoundEnabled(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3012
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-interface {v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onSwitchRecordMode(Z)V

    .line 3013
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-static {v2, v4, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$msetRecordVideoButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V

    goto :goto_10

    .line 3015
    :cond_2e
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    .line 3017
    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3018
    invoke-virtual {v0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_14

    .line 3019
    :cond_2f
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcalledRecordRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 3020
    :cond_30
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputstartedDraggingX(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 3021
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethasRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 3022
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->needsPaidMessageAlert(IJ)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3023
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 3024
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 3026
    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->toggleVideoRecordingPause()V

    .line 3027
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V

    invoke-static {v1, v4, v5, v3, v2}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return v3

    .line 3032
    :cond_32
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetonFinishInitCameraRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 3033
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v4, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v4, :cond_33

    move v15, v7

    goto :goto_11

    :cond_33
    move v15, v2

    :goto_11
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgeteffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v10 .. v19}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZIIIJJ)V

    .line 3034
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputeffectId(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;->setEffect(J)V

    goto/16 :goto_13

    .line 3035
    :cond_34
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendVoiceEnabled(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 3036
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    goto/16 :goto_13

    .line 3038
    :cond_35
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/AlertsCreator;->needsPaidMessageAlert(IJ)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 3039
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3040
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcalledRecordRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 3042
    :cond_36
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaController;->toggleRecordingPause(Z)V

    .line 3043
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 3044
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 3045
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 3047
    :cond_37
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V

    invoke-static {v1, v4, v5, v3, v2}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return v3

    .line 3052
    :cond_38
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 3053
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v10

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v11

    new-instance v13, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda7;

    invoke-direct {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda7;-><init>()V

    new-instance v14, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda8;

    invoke-direct {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda8;-><init>()V

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3055
    :cond_39
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 3056
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v10

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v4

    if-eqz v4, :cond_3a

    move v11, v1

    goto :goto_12

    :cond_3a
    move v11, v3

    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v14, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const-wide/16 v15, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZJ)V

    .line 3058
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 3059
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v2, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    .line 3060
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmoveToSendStateRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)V

    .line 3063
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    if-eqz v1, :cond_3b

    const-wide/16 v8, 0x1f4

    .line 3060
    :cond_3b
    invoke-static {v2, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3c
    :goto_14
    return v3
.end method

.method public setVisibility(I)V
    .locals 0

    .line 2876
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
