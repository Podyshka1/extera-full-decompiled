.class public Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/pip/activity/IPipActivityListener;
.implements Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;


# instance fields
.field private contentBackground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

.field private contentForeground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

.field private lastProgress:F

.field private lastRadius:F

.field private final path:Landroid/graphics/Path;

.field public pictureInPicturePlaceholderView:Landroid/view/View;

.field public pictureInPictureView:Landroid/view/View;

.field private pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

.field private pipSourcePlaceholder:Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;

.field public final position:Landroid/graphics/Rect;

.field public final positionSource:Landroid/graphics/Rect;

.field private final rect:Landroid/graphics/RectF;

.field private shouldBeAttached:Z

.field private final source:Lorg/telegram/messenger/pip/PipSource;

.field private state:I


# direct methods
.method public static synthetic $r8$lambda$2ePjpj74bJmX64riKV1CKwKmSSE(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->performDetach()V

    return-void
.end method

.method public static synthetic $r8$lambda$4tl75OXwhrhJHAexkRxL73Rql_8(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lambda$performPreDetach2$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TTSZ417R3PKlqASkqJgdtHQSqBc(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->performAttach()V

    return-void
.end method

.method public static synthetic $r8$lambda$UtcQfie2xb7zMrcc_IU35OrjEHY(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lambda$performPreAttach$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WCq45mYC3CvQ5nveZPAMNxXMzWM(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lambda$performPreDetach1$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xu92nI7JDdH40_0IJIiXXMIe_Q0(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lambda$performAttach$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZaKxMXStaSIm8f3x9SWNx3MBR-w(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->performPreDetach2()V

    return-void
.end method

.method public static synthetic $r8$lambda$nz2jHQlnOjEEfthMPfS8o8DoPaE(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lambda$performPreDetach2$3(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/pip/PipSource;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->positionSource:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->position:Landroid/graphics/Rect;

    .line 252
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->rect:Landroid/graphics/RectF;

    .line 253
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->path:Landroid/graphics/Path;

    .line 90
    iput-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 3

    .line 289
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 290
    iget v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lastProgress:F

    const/high16 v2, 0x43d20000    # 420.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 291
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->contentBackground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->draw(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method private drawForeground(Landroid/graphics/Canvas;)V
    .locals 3

    .line 295
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->contentForeground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lastProgress:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->draw(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method private synthetic lambda$performAttach$1(Z)V
    .locals 2

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pipSourcePlaceholder:Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->stopPlaceholderForActivity()V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HANDLER] on new source render first frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PIP_DEBUG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$performPreAttach$0(Z)V
    .locals 0

    .line 133
    new-instance p1, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performPreDetach1$2(Z)V
    .locals 0

    .line 183
    new-instance p1, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performPreDetach2$3(Z)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HANDLER] on old source render first frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PIP_DEBUG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pipSourcePlaceholder:Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performPreDetach2$4(Z)V
    .locals 0

    .line 203
    new-instance p1, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private performAttach()V
    .locals 4

    .line 139
    iget v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PIP_DEBUG] wrong pip state STATE_PRE_ATTACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    const-string v0, "PIP_DEBUG"

    const-string v1, "[HANDLER] attach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pipSourcePlaceholder:Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->stopPlaceholderForSource()V

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    new-instance v1, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/pip/utils/Trigger;->run(Lorg/telegram/messenger/pip/utils/Trigger$Callback;J)Lorg/telegram/messenger/pip/utils/Trigger;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate;->pipHidePrimaryWindowView(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x2

    .line 159
    iput v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    .line 160
    iget-boolean v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->shouldBeAttached:Z

    if-nez v0, :cond_1

    .line 161
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->performPreDetach1()V

    :cond_1
    return-void
.end method

.method private performDetach()V
    .locals 2

    .line 209
    iget v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PIP_DEBUG] wrong pip state STATE_PRE_DETACHED_2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/PipActivityController;->getPipContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureView:Landroid/view/View;

    .line 218
    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    .line 219
    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPicturePlaceholderView:Landroid/view/View;

    .line 221
    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->contentForeground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v1}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->release()V

    .line 223
    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->contentForeground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    .line 225
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->contentBackground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {v1}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;->release()V

    .line 227
    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->contentBackground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    .line 230
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pipSourcePlaceholder:Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->stopPlaceholderForActivity()V

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    .line 233
    const-string v0, "PIP_DEBUG"

    const-string v1, "[HANDLER] detach"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->shouldBeAttached:Z

    if-eqz v0, :cond_3

    .line 235
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->performPreAttach()V

    :cond_3
    return-void
.end method

.method private performPreAttach()V
    .locals 7

    .line 96
    iget v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PIP_DEBUG] wrong pip state STATE_DETACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->params:Lorg/telegram/messenger/pip/utils/PipSourceParams;

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->positionSource:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/pip/utils/PipSourceParams;->getPosition(Landroid/graphics/Rect;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HANDLER] pre attach start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->positionSource:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PIP_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 109
    iget-object v2, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v2, v2, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    iget-object v2, v2, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 111
    iget-object v3, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v3, v3, Lorg/telegram/messenger/pip/PipSource;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    invoke-interface {v3}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate;->pipCreatePrimaryWindowViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 113
    new-instance v4, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    iget-object v5, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v5, v5, Lorg/telegram/messenger/pip/PipSource;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)V

    invoke-direct {v4, v0, v2, v6}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;-><init>(IILorg/telegram/messenger/Utilities$Callback;)V

    iput-object v4, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->contentBackground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    .line 114
    new-instance v4, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    iget-object v5, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v5, v5, Lorg/telegram/messenger/pip/PipSource;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/pip/source/IPipSourceDelegate;)V

    invoke-direct {v4, v0, v2, v6}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot;-><init>(IILorg/telegram/messenger/Utilities$Callback;)V

    iput-object v4, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->contentForeground:Lorg/telegram/messenger/pip/source/PipSourceSnapshot;

    .line 116
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    invoke-interface {v0}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate;->pipCreatePictureInPictureView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureView:Landroid/view/View;

    .line 117
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v2, v2, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    iget-object v2, v2, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPicturePlaceholderView:Landroid/view/View;

    .line 118
    new-instance v0, Lorg/telegram/messenger/pip/PipSourceContentView;

    iget-object v2, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v2, v2, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    iget-object v2, v2, Lorg/telegram/messenger/pip/PipActivityController;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lorg/telegram/messenger/pip/PipSourceContentView;-><init>(Landroid/content/Context;Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    .line 119
    iget-object v2, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPicturePlaceholderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    iget-object v2, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    new-instance v0, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;

    iget-object v2, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPicturePlaceholderView:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v4, v4, Lorg/telegram/messenger/pip/PipSource;->placeholderView:Landroid/view/View;

    invoke-direct {v0, v2, v4}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pipSourcePlaceholder:Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;

    .line 123
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->setPlaceholder(Landroid/graphics/Bitmap;)V

    .line 125
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/PipActivityController;->getPipContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    .line 126
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 128
    iput v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureView:Landroid/view/View;

    new-instance v2, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V

    const-wide/16 v3, 0x12c

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/pip/utils/Trigger;->run(Lorg/telegram/messenger/pip/utils/Trigger$Callback;J)Lorg/telegram/messenger/pip/utils/Trigger;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->doOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 135
    const-string v0, "[HANDLER] pre attach end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private performPreDetach1()V
    .locals 4

    .line 166
    iget v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PIP_DEBUG] wrong pip state STATE_ATTACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pipSourcePlaceholder:Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v1, v1, Lorg/telegram/messenger/pip/PipSource;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    invoke-interface {v1}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate;->pipCreatePictureInPictureViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/pip/source/PipSourcePlaceholder;->setPlaceholder(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x3

    .line 175
    iput v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    .line 177
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureView:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    new-instance v1, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/pip/utils/Trigger;->run(Lorg/telegram/messenger/pip/utils/Trigger$Callback;J)Lorg/telegram/messenger/pip/utils/Trigger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->doOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 185
    const-string v0, "PIP_DEBUG"

    const-string v1, "[HANDLER] pre detach 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private performPreDetach2()V
    .locals 4

    .line 189
    iget v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PIP_DEBUG] wrong pip state STATE_PRE_DETACHED_1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->delegate:Lorg/telegram/messenger/pip/source/IPipSourceDelegate;

    new-instance v1, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/pip/utils/Trigger;->run(Lorg/telegram/messenger/pip/utils/Trigger$Callback;J)Lorg/telegram/messenger/pip/utils/Trigger;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/pip/source/IPipSourceDelegate;->pipShowPrimaryWindowView(Ljava/lang/Runnable;)V

    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x4

    .line 199
    iput v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    .line 202
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->contentView:Landroid/view/View;

    new-instance v1, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;)V

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/pip/utils/Trigger;->run(Lorg/telegram/messenger/pip/utils/Trigger$Callback;J)Lorg/telegram/messenger/pip/utils/Trigger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->doOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 205
    const-string v0, "PIP_DEBUG"

    const-string v1, "[HANDLER] pre detach 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rebuildPath(F)V
    .locals 3

    .line 256
    iget v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lastRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lastRadius:F

    .line 261
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->position:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 263
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 264
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->rect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 265
    iget-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 269
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget v0, v0, Lorg/telegram/messenger/pip/PipSource;->cornerRadius:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lastProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 272
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->drawBackground(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_1

    .line 275
    invoke-direct {p0, v0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->rebuildPath(F)V

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 277
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 280
    :cond_1
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 281
    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->drawForeground(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public isAttachedToPip()Z
    .locals 1

    .line 303
    iget v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onCompleteEnterToPip()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/pip/activity/IPipActivityListener$-CC;->$default$onCompleteEnterToPip(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V

    return-void
.end method

.method public onCompleteExitFromPip(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 314
    iput-boolean p1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->shouldBeAttached:Z

    .line 315
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->performPreDetach1()V

    return-void
.end method

.method public synthetic onEnterAnimationEnd(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener$-CC;->$default$onEnterAnimationEnd(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;J)V

    return-void
.end method

.method public synthetic onEnterAnimationStart(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener$-CC;->$default$onEnterAnimationStart(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;J)V

    return-void
.end method

.method public synthetic onLeaveAnimationEnd(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener$-CC;->$default$onLeaveAnimationEnd(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;J)V

    return-void
.end method

.method public synthetic onLeaveAnimationStart(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener$-CC;->$default$onLeaveAnimationStart(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;J)V

    return-void
.end method

.method public onLoseMaxPriority()V
    .locals 3

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->shouldBeAttached:Z

    .line 341
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->performPreDetach1()V

    .line 343
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/pip/PipActivityController;->removePipListener(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V

    .line 344
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/pip/PipActivityController;->removeAnimationListener(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;)V

    .line 345
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v1, v0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    iget-object v2, v0, Lorg/telegram/messenger/pip/PipSource;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/pip/PipActivityController;->removeActionListener(Ljava/lang/String;Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;)V

    return-void
.end method

.method public onReceiveMaxPriority()V
    .locals 3

    .line 334
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/pip/PipActivityController;->addPipListener(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V

    .line 335
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v0, v0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/pip/PipActivityController;->addAnimationListener(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;)V

    .line 336
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->source:Lorg/telegram/messenger/pip/PipSource;

    iget-object v1, v0, Lorg/telegram/messenger/pip/PipSource;->controller:Lorg/telegram/messenger/pip/PipActivityController;

    iget-object v2, v0, Lorg/telegram/messenger/pip/PipSource;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/pip/PipActivityController;->addActionListener(Ljava/lang/String;Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;)V

    return-void
.end method

.method public onStartEnterToPip()V
    .locals 1

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->shouldBeAttached:Z

    .line 309
    invoke-direct {p0}, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->performPreAttach()V

    return-void
.end method

.method public synthetic onStartExitFromPip(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/pip/activity/IPipActivityListener$-CC;->$default$onStartExitFromPip(Lorg/telegram/messenger/pip/activity/IPipActivityListener;Z)V

    return-void
.end method

.method public onTransitionAnimationFrame()V
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationProgress(F)V
    .locals 0

    .line 327
    iput p1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->lastProgress:F

    .line 328
    iget-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->pictureInPictureWrapperView:Lorg/telegram/messenger/pip/PipSourceContentView;

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public updatePositionViewRect(IIZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 245
    iget-object p3, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->position:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 247
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->position:Landroid/graphics/Rect;

    iget-object p2, p0, Lorg/telegram/messenger/pip/source/PipSourceHandlerState2;->positionSource:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
