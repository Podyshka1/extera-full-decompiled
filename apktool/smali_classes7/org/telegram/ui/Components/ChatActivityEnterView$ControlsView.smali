.class public Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControlsView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;
    }
.end annotation


# instance fields
.field private colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

.field private hidePauseT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private lastSize:I

.field private lastUpdateTime:J

.field private lockBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field lockBackgroundPaint:Landroid/graphics/Paint;

.field lockOutlinePaint:Landroid/graphics/Paint;

.field lockPaint:Landroid/graphics/Paint;

.field private micDrawable:Landroid/graphics/drawable/Drawable;

.field private onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private oncePressed:Z

.field public final onceRect:Landroid/graphics/RectF;

.field private p:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private final path2:Landroid/graphics/Path;

.field private pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private pausePressed:Z

.field private periodBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

.field private final radiiLeft:[F

.field private final radiiRight:[F

.field private final rectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private tooltipBackground:Landroid/graphics/drawable/Drawable;

.field private tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

.field private tooltipLayout:Landroid/text/StaticLayout;

.field private tooltipMessage:Ljava/lang/String;

.field private tooltipPaint:Landroid/text/TextPaint;

.field private tooltipWidth:F

.field private useGlassDesign:Z

.field private vidDrawable:Landroid/graphics/drawable/Drawable;

.field private virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;


# direct methods
.method public static synthetic $r8$lambda$4znI4ag7NBWWy1NRxUOThxjiz6E(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$hideHintView$2(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FY0XsNC9mcf-5MkieqYHt46X-KE(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1791
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1792
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "trimvoicehint"

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic $r8$lambda$P-r3U5rQ3hfEPuaLMJZomVocRL0(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$SM8u6GE4D1tWWLbL5bulCAF89gg(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$hideHintView$3(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aA5NybmTbrGx5CNMp16wc9lOWsU(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$showPauseHint$0(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bPBL1XNJJ5zkQrhKHTGFYlV6ZN4(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$onTouchEvent$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f16YCQkbkVFXUrJj4qLFexX_cR4(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lambda$showOnceHint$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetperiodDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;)Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 11

    .line 1200
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 1201
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1175
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    .line 1176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    .line 1177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    .line 1178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    .line 1180
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    .line 1181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    .line 1334
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1335
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    .line 1339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    const/16 v0, 0x8

    .line 1340
    new-array v2, v0, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    .line 1342
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v7, 0x15e

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v3, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hidePauseT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1203
    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;

    invoke-direct {v3, p0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Landroid/view/View;)V

    iput-object v3, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;

    .line 1204
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1206
    new-instance v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;-><init>()V

    iput-object v3, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    .line 1207
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1208
    iget-object v3, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    iget-boolean v5, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v5, v6}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setValue(IZZ)V

    .line 1210
    iget-object v3, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1211
    iget-object v3, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1212
    iget-object v3, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    const v5, 0x3fd9999a    # 1.7f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1214
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->lock_round_shadow:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputlockShadowDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)V

    .line 1215
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlockShadowDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockShadow:I

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v3, 0x40a00000    # 5.0f

    .line 1216
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result p1

    invoke-static {v3, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    iput-object p1, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 1218
    iget-object p1, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1219
    sget p1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1220
    const-string p1, "SlideUpToLock"

    sget p2, Lorg/telegram/messenger/R$string;->SlideUpToLock:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipMessage:Ljava/lang/String;

    const/high16 p1, 0x40400000    # 3.0f

    .line 1222
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v3, 0x7

    aput p2, v2, v3

    const/4 v5, 0x6

    aput p2, v2, v5

    aput p2, v2, v1

    aput p2, v2, v6

    const/4 p2, 0x5

    const/4 v7, 0x0

    .line 1223
    aput v7, v2, p2

    const/4 v8, 0x4

    aput v7, v2, v8

    const/4 v9, 0x3

    aput v7, v2, v9

    const/4 v10, 0x2

    aput v7, v2, v10

    .line 1225
    aput v7, v0, v3

    aput v7, v0, v5

    aput v7, v0, v1

    aput v7, v0, v6

    .line 1226
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, v0, p2

    aput p1, v0, v8

    aput p1, v0, v9

    aput p1, v0, v10

    .line 1228
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->input_mic:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->micDrawable:Landroid/graphics/drawable/Drawable;

    .line 1229
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->input_video:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->vidDrawable:Landroid/graphics/drawable/Drawable;

    .line 1231
    invoke-virtual {p0, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1232
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->updateColors()V

    return-void
.end method

.method private synthetic lambda$hideHintView$2(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 1295
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$hideHintView$3(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 1301
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 3

    .line 1763
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1764
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "voicepausehint"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1766
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1767
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcalledRecordRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 1769
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->toggleRecordingPause(Z)V

    .line 1770
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 1771
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(Ljava/lang/Runnable;)V
    .locals 9

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioRightMs()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioLeftMs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmillisecondsRecorded(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    .line 1784
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioLeftMs()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioRightMs()J

    move-result-wide v6

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MediaController;->trimCurrentRecording(JJLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showOnceHint$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 1

    .line 1284
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1285
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1286
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPauseHint$0(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 1

    .line 1255
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1256
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1257
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method private scale(Landroid/graphics/RectF;F)V
    .locals 3

    .line 1732
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 1733
    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 1734
    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1735
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1736
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1676
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hideHintView()V
    .locals 3

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1295
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1296
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 1297
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1299
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    .line 1301
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1302
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 1303
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1347
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v8, 0x3f800000    # 1.0f

    if-gtz v2, :cond_0

    .line 1348
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    const/high16 v5, 0x3f400000    # 0.75f

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_1

    .line 1350
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    sub-float v2, v8, v2

    goto :goto_0

    .line 1352
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    sub-float/2addr v2, v5

    div-float/2addr v2, v4

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    const v3, 0x3f666666    # 0.9f

    add-float/2addr v2, v3

    .line 1354
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastUpdateTime:J

    sub-long/2addr v5, v9

    .line 1355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastUpdateTime:J

    .line 1358
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlockAnimatedTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const v7, 0x461c4000    # 10000.0f

    cmpl-float v3, v3, v7

    const/high16 v7, 0x42640000    # 57.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    .line 1359
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstartTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlockAnimatedTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v11

    sub-float/2addr v3, v11

    float-to-int v3, v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 1360
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v3, v11

    if-lez v11, :cond_3

    .line 1361
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    :cond_2
    move v3, v10

    .line 1365
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/high16 v12, 0x41d00000    # 26.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v12

    sub-int/2addr v11, v12

    .line 1366
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v3, v7

    sub-float v12, v8, v7

    .line 1367
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v13, 0x43420000    # 194.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v7, v13

    int-to-float v7, v7

    .line 1376
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v13

    const v14, 0x3ecccccd    # 0.4f

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v16, 0x42100000    # 36.0f

    const/high16 v17, 0x41000000    # 8.0f

    const/high16 v18, 0x40000000    # 2.0f

    if-eqz v13, :cond_5

    .line 1377
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v19, 0x42700000    # 60.0f

    move/from16 v20, v4

    .line 1378
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v7

    const/high16 v19, 0x41f00000    # 30.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v19

    sub-float v2, v8, v2

    mul-float v19, v19, v2

    add-float v4, v4, v19

    sub-float/2addr v4, v3

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float/2addr v2, v12

    add-float/2addr v4, v2

    div-float v2, v13, v18

    add-float/2addr v2, v4

    .line 1380
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v2, v3

    .line 1381
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    cmpl-float v3, v12, v14

    if-lez v3, :cond_4

    move v3, v8

    goto :goto_2

    :cond_4
    div-float v3, v12, v14

    :goto_2
    const/high16 v19, 0x41100000    # 9.0f

    sub-float v21, v8, v12

    mul-float v21, v21, v19

    move/from16 v19, v14

    .line 1384
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v14

    sub-float v14, v8, v14

    mul-float v21, v21, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v14

    const/high16 v22, 0x41700000    # 15.0f

    mul-float v14, v14, v22

    sub-float v3, v8, v3

    mul-float/2addr v14, v3

    sub-float v21, v21, v14

    move v3, v12

    :goto_3
    move v14, v13

    move v13, v4

    goto :goto_4

    :cond_5
    move/from16 v20, v4

    move/from16 v19, v14

    .line 1388
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    add-int/2addr v4, v13

    int-to-float v13, v4

    const/high16 v4, 0x42700000    # 60.0f

    .line 1389
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v7

    const/high16 v14, 0x41f00000    # 30.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float v2, v8, v2

    mul-float/2addr v14, v2

    float-to-int v2, v14

    int-to-float v2, v2

    add-float/2addr v4, v2

    float-to-int v2, v3

    int-to-float v2, v2

    sub-float/2addr v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    mul-float/2addr v2, v12

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    div-float v2, v13, v18

    add-float/2addr v2, v4

    .line 1390
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    .line 1391
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    const/high16 v3, 0x41100000    # 9.0f

    sub-float v14, v8, v12

    mul-float v21, v14, v3

    .line 1393
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    move v3, v10

    goto :goto_3

    .line 1396
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetshowTooltip(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    const/high16 v22, 0x3fc00000    # 1.5f

    const/16 v23, 0x2

    const/high16 v24, 0x40800000    # 4.0f

    const/high16 v25, 0x40400000    # 3.0f

    if-eqz v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetshowTooltipStartTime(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v28

    sub-long v26, v26, v28

    const-wide/16 v28, 0xc8

    cmp-long v4, v26, v28

    if-gtz v4, :cond_7

    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_c

    :cond_7
    const v4, 0x3f4ccccd    # 0.8f

    cmpg-float v4, v12, v4

    if-ltz v4, :cond_8

    .line 1397
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v10

    if-nez v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_9

    .line 1398
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputshowTooltip(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 1400
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetshowTooltip(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1401
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_b

    .line 1402
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v26

    long-to-float v5, v5

    const/high16 v6, 0x43160000    # 150.0f

    div-float/2addr v5, v6

    add-float v5, v26, v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 1403
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_b

    .line 1404
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 1405
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->increaseLockRecordAudioVideoHintShowed()V

    goto :goto_5

    .line 1409
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v26

    long-to-float v5, v5

    const/high16 v6, 0x43160000    # 150.0f

    div-float/2addr v5, v6

    sub-float v5, v26, v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 1410
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpg-float v4, v4, v10

    if-gez v4, :cond_b

    .line 1411
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 1416
    :cond_b
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1418
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1419
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1420
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1422
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_c

    .line 1423
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1424
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    move/from16 v26, v15

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v5, v10, v10, v6, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1425
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1426
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 1427
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    neg-int v15, v15

    move/from16 v26, v8

    iget v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    .line 1428
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v28

    add-float v9, v9, v28

    float-to-int v9, v9

    .line 1426
    invoke-virtual {v5, v6, v15, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1430
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1431
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1432
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1434
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1435
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41880000    # 17.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v6, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v18

    add-float/2addr v6, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v8, v8, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1436
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 1437
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    neg-float v6, v6

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 1438
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v10, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1439
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1441
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1442
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1443
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1444
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1445
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1446
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1447
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1448
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1450
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1451
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1452
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v11, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v6, v8

    float-to-int v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    .line 1453
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v11

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v7

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    add-float/2addr v9, v7

    float-to-int v7, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v7, v9

    .line 1451
    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1455
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1456
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_c
    move/from16 v26, v8

    .line 1463
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hidePauseT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisInVideoMode(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmillisecondsRecorded(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v5

    const-wide/32 v28, 0xe678

    cmp-long v5, v5, v28

    if-ltz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v9

    .line 1465
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v5, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    if-eqz v5, :cond_10

    .line 1469
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const v5, 0x3ec28f5c    # 0.38f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_e

    move/from16 v4, v26

    goto :goto_8

    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    div-float/2addr v4, v5

    .line 1470
    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    const v7, 0x3f2147ae    # 0.63f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f

    move/from16 v5, v26

    goto :goto_9

    :cond_f
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    sub-float/2addr v6, v5

    div-float v6, v6, v20

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1472
    :goto_9
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 1473
    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move v15, v4

    move v5, v10

    goto :goto_c

    .line 1474
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_13

    .line 1478
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const v5, 0x3f19999a    # 0.6f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_11

    move/from16 v4, v26

    goto :goto_a

    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    div-float/2addr v4, v5

    .line 1479
    :goto_a
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v7, v6, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    if-eqz v7, :cond_12

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    goto :goto_b

    :cond_12
    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    sub-float/2addr v6, v5

    div-float v6, v6, v19

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1481
    :goto_b
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 1482
    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    move v15, v4

    goto :goto_c

    :cond_13
    move v5, v10

    move v15, v5

    .line 1485
    :goto_c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1486
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettextFieldContainer(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v7, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1488
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcontrolsScale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    sub-float v4, v26, v4

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_14

    .line 1489
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcontrolsScale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    sub-float v4, v26, v4

    goto :goto_d

    :cond_14
    cmpl-float v4, v5, v10

    if-eqz v4, :cond_15

    move v4, v5

    goto :goto_d

    :cond_15
    move v4, v10

    .line 1495
    :goto_d
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    const v7, 0x3f333333    # 0.7f

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_17

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_e

    .line 1504
    :cond_16
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    cmpl-float v6, v6, v26

    if-eqz v6, :cond_18

    .line 1505
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v7

    const v19, 0x3df5c28f    # 0.12f

    add-float v7, v7, v19

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 1506
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    cmpl-float v6, v6, v26

    if-lez v6, :cond_18

    .line 1507
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move/from16 v7, v26

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    goto :goto_f

    .line 1496
    :cond_17
    :goto_e
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputshowTooltip(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 1497
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_18

    .line 1498
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v7

    const v19, 0x3df5c28f    # 0.12f

    sub-float v7, v7, v19

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 1499
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_18

    .line 1500
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    :cond_18
    :goto_f
    const/high16 v6, 0x42900000    # 72.0f

    .line 1512
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    mul-float v7, v6, v4

    const/high16 v19, 0x41c00000    # 24.0f

    .line 1515
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v20

    mul-float v20, v20, v15

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v4, v26, v4

    mul-float v20, v20, v4

    add-float v7, v7, v20

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    sub-float v4, v26, v4

    mul-float/2addr v4, v6

    add-float/2addr v7, v4

    cmpl-float v4, v7, v6

    if-lez v4, :cond_19

    move/from16 v20, v6

    goto :goto_10

    :cond_19
    move/from16 v20, v7

    :goto_10
    sub-float v4, v26, v9

    .line 1521
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcontrolsScale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    mul-float/2addr v4, v6

    sub-float v5, v26, v5

    mul-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    mul-float/2addr v4, v5

    int-to-float v5, v11

    add-float v2, v2, v20

    .line 1522
    invoke-virtual {v1, v4, v4, v5, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1524
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    const/high16 v28, 0x41900000    # 18.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float v7, v5, v7

    const/16 v29, 0x1

    add-float v8, v13, v20

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v30

    add-float v10, v5, v30

    move/from16 v30, v2

    add-float v2, v8, v14

    invoke-virtual {v6, v7, v8, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1526
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v2, :cond_1a

    .line 1527
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 1528
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 1529
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v32

    add-float v10, v10, v32

    float-to-int v10, v10

    .line 1527
    invoke-virtual {v2, v6, v7, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1531
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 1533
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlockShadowDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 1534
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 1535
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v32

    add-float v10, v10, v32

    float-to-int v10, v10

    .line 1533
    invoke-virtual {v2, v6, v7, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1537
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlockShadowDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1538
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1542
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpauseRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1543
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpauseRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->scale(Landroid/graphics/RectF;F)V

    .line 1544
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_1b

    .line 1545
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1546
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1549
    :cond_1b
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    const/high16 v8, 0x40c00000    # 6.0f

    .line 1550
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, v5, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v10, v26, v3

    mul-float/2addr v6, v10

    sub-float/2addr v4, v6

    .line 1551
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    mul-float/2addr v6, v10

    sub-float v6, v30, v6

    .line 1552
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v11, v7

    int-to-float v7, v11

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    mul-float/2addr v11, v10

    add-float/2addr v7, v11

    const/high16 v11, 0x41400000    # 12.0f

    move/from16 v32, v8

    .line 1553
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float v8, v30, v8

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v30

    mul-float v30, v30, v10

    add-float v8, v8, v30

    .line 1549
    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1555
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    .line 1556
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 1557
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 1558
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1560
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    mul-float v6, v6, v18

    move/from16 v30, v11

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v6, v7, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v33

    .line 1561
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 1563
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    .line 1564
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v4, v7

    .line 1565
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    move/from16 v34, v1

    .line 1566
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    move/from16 v19, v1

    int-to-float v1, v11

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v35, v26, v33

    mul-float v1, v1, v35

    float-to-int v1, v1

    move/from16 v35, v3

    move v3, v7

    const/16 v7, 0x1f

    move/from16 v36, v8

    move/from16 v8, v21

    move/from16 v21, v5

    move/from16 v5, v19

    move/from16 v19, v9

    move/from16 v9, v35

    move/from16 v35, v14

    move v14, v4

    move/from16 v4, v34

    move/from16 v34, v10

    move v10, v2

    move v2, v6

    move v6, v1

    move-object/from16 v1, p1

    .line 1562
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v7

    .line 1567
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1568
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1570
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v37, v26, v12

    mul-float v2, v2, v37

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1571
    invoke-virtual {v1, v8, v10, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    cmpl-float v38, v9, v26

    if-eqz v38, :cond_1d

    .line 1574
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1575
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1576
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v20, v36

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float v5, v5, v37

    add-float/2addr v4, v5

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1577
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v5, v21, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    move-object/from16 v36, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v2, v26, v2

    mul-float/2addr v6, v2

    invoke-static {v4, v6, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float/2addr v2, v9

    add-float/2addr v3, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/16 v31, 0x0

    cmpl-float v2, v8, v31

    if-lez v2, :cond_1c

    .line 1579
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v8, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1581
    :cond_1c
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    mul-float v6, v6, v34

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    .line 1582
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, -0x3ccc0000    # -180.0f

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1584
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    .line 1585
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v5, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    mul-float/2addr v2, v5

    mul-float/2addr v2, v12

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    mul-float/2addr v2, v4

    mul-float v2, v2, v37

    add-float v5, v1, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    .line 1583
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1588
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/16 v31, 0x0

    goto :goto_12

    :cond_1d
    move/from16 v31, v6

    :goto_12
    cmpl-float v2, v33, v31

    if-lez v2, :cond_1f

    .line 1593
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisInVideoMode(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->vidDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    :cond_1e
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->micDrawable:Landroid/graphics/drawable/Drawable;

    :goto_13
    const/16 v31, 0x0

    goto :goto_14

    :cond_1f
    const/4 v2, 0x0

    goto :goto_13

    :goto_14
    cmpl-float v3, v9, v31

    if-lez v3, :cond_21

    .line 1597
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-nez v3, :cond_20

    .line 1598
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1601
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 1602
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1603
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    const v5, 0x3fd47ae1    # 1.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 1604
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5, v6, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x7

    aput v5, v4, v6

    const/4 v6, 0x6

    aput v5, v4, v6

    aput v5, v4, v29

    const/16 v27, 0x0

    aput v5, v4, v27

    .line 1605
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/4 v6, 0x5

    aput v5, v4, v6

    const/4 v6, 0x4

    aput v5, v4, v6

    const/4 v6, 0x3

    aput v5, v4, v6

    aput v5, v4, v23

    .line 1606
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiLeft:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1607
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1608
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    const v5, 0x3fd47ae1    # 1.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 1609
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v5, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    const/4 v8, 0x5

    aput v5, v4, v8

    const/4 v8, 0x4

    aput v5, v4, v8

    const/4 v8, 0x3

    aput v5, v4, v8

    aput v5, v4, v23

    .line 1610
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/4 v8, 0x7

    aput v5, v4, v8

    const/4 v8, 0x6

    aput v5, v4, v8

    aput v5, v4, v29

    const/16 v27, 0x0

    aput v5, v4, v27

    .line 1611
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->radiiRight:[F

    invoke-virtual {v4, v3, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1612
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->path2:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_15

    :cond_21
    const/16 v27, 0x0

    .line 1614
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1616
    :goto_15
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1617
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1618
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v2, :cond_22

    .line 1622
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1623
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const v6, 0x3f6db22d    # 0.9285f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1624
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1625
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    .line 1626
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 1622
    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1628
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v33

    float-to-int v3, v3

    .line 1629
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1630
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_22
    if-eqz v38, :cond_23

    .line 1634
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    mul-float v2, v2, v34

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v14, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1636
    :cond_23
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1637
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1639
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x42ec0000    # 118.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v13, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    add-float v2, v2, v20

    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v19

    add-float/2addr v2, v3

    .line 1640
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v5, v21, v4

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float v4, v21, v4

    add-float v14, v2, v35

    invoke-virtual {v3, v5, v2, v4, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1641
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    if-eqz v3, :cond_24

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onceVoiceAvailable()Z

    move-result v3

    if-eqz v3, :cond_24

    move/from16 v9, v29

    goto :goto_16

    :cond_24
    move/from16 v9, v27

    :goto_16
    iput-boolean v9, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    .line 1642
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    if-eqz v2, :cond_27

    .line 1643
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    .line 1644
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    .line 1645
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v5, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v2

    .line 1644
    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1647
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_25

    .line 1648
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1649
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1651
    :cond_25
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1652
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1653
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcontrolsScale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v8, v26, v3

    mul-float/2addr v2, v8

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    mul-float/2addr v2, v3

    .line 1654
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1656
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v2, :cond_26

    .line 1657
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 1658
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 1659
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 1657
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1661
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_17

    .line 1662
    :cond_26
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlockShadowDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 1663
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 1664
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 1662
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1666
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlockShadowDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1667
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1668
    :goto_17
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->rectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v2, v4, v5, v6, v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setBounds(IIII)V

    .line 1669
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1670
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_27
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1311
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x437e0000    # 254.0f

    .line 1312
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1313
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastSize:I

    if-eq v1, p2, :cond_1

    .line 1314
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lastSize:I

    .line 1315
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipMessage:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x435c0000    # 220.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    .line 1316
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v1, 0x0

    .line 1317
    iput v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1319
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 1320
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 1321
    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipWidth:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 1330
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1328
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    .line 1195
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onSetAlpha(I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1747
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 1748
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1749
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpauseRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v2, v0

    int-to-float v5, v1

    invoke-virtual {p1, v2, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    .line 1751
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    if-eqz v2, :cond_e

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_e

    .line 1752
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    goto/16 :goto_4

    .line 1754
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_d

    .line 1755
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpauseRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float v2, v0

    int-to-float v5, v1

    invoke-virtual {p1, v2, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1756
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1757
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1758
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1760
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->toggleVideoRecordingPause()V

    goto/16 :goto_0

    .line 1762
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;)V

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1776
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    .line 1778
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    if-eqz v0, :cond_5

    .line 1779
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->setPlaying(Z)V

    .line 1781
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioLeft()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->getAudioRight()F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 1782
    :cond_6
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Ljava/lang/Runnable;)V

    .line 1786
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "trimvoicehint"

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1787
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->RecordingTrimTitle:I

    .line 1788
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->RecordingTrimText:I

    .line 1789
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    .line 1790
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1794
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1795
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 1797
    :cond_7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1800
    :cond_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1803
    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    return v4

    .line 1805
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1806
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    .line 1807
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {p1, v4, v0, v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setValue(IZZ)V

    .line 1808
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v0

    :goto_1
    move-wide v8, v0

    goto :goto_2

    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v10, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/MediaDataController;->toggleDraftVoiceOnce(JJZ)V

    .line 1809
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz p1, :cond_b

    .line 1810
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->showOnceHint()V

    goto :goto_3

    .line 1812
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    .line 1814
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1815
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    return v4

    .line 1818
    :cond_c
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    goto :goto_4

    .line 1819
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 1820
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    .line 1822
    :cond_e
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pausePressed:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->oncePressed:Z

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    return v3

    :cond_10
    :goto_5
    return v4
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1190
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setBlurredBackgroundFactory(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
    .locals 4

    const/4 v0, 0x1

    .line 1685
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->useGlassDesign:Z

    .line 1687
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    if-nez v0, :cond_0

    .line 1688
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockBackground:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    .line 1691
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-virtual {p1, p0, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v1, 0x41c00000    # 24.0f

    .line 1692
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1693
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1695
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    invoke-virtual {p1, p0, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1696
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1697
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1699
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->updateColors()V

    return-void
.end method

.method public showOnceHint()V
    .locals 8

    .line 1264
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    .line 1265
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1266
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisInVideoMode(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->VideoSetOnceHintEnabled:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->VideoSetOnceHint:I

    goto :goto_0

    .line 1272
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->VoiceSetOnceHintEnabled:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->VoiceSetOnceHint:I

    .line 1274
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1275
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v0, :cond_3

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v1, Lorg/telegram/messenger/R$raw;->fire_on:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIcon(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_1

    .line 1279
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "voiceoncehint"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1281
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v6, 0x42580000    # 54.0f

    const/high16 v7, 0x42680000    # 58.0f

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x77

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1283
    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method public showPauseHint()V
    .locals 8

    .line 1243
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "voicepausehint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    return-void

    .line 1246
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->hideHintView()V

    .line 1247
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1248
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v4, Lorg/telegram/messenger/R$string;->VoicePauseHint:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1251
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v6, 0x42580000    # 54.0f

    const/high16 v7, 0x42680000    # 58.0f

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x77

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1253
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1254
    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1260
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->pauseHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method public showTooltipIfNeed()V
    .locals 3

    .line 1236
    sget v0, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputshowTooltip(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputshowTooltipStartTime(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 1703
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;->updateColors()V

    .line 1706
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_1

    .line 1707
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->updateColors()V

    .line 1709
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodBackgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_2

    .line 1710
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->updateColors()V

    .line 1713
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 1714
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->useGlassDesign:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    goto :goto_0

    :cond_3
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    .line 1715
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v2

    const/4 v3, -0x1

    .line 1713
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->updateColors(III)V

    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 1720
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1723
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLockBackground:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1724
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->useGlassDesign:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    goto :goto_1

    :cond_4
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->lockOutlinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->useGlassDesign:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    goto :goto_2

    :cond_5
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->micDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->useGlassDesign:Z

    if-eqz v4, :cond_6

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    goto :goto_3

    :cond_6
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    :goto_3
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1728
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->vidDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->useGlassDesign:Z

    if-eqz v4, :cond_7

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    goto :goto_4

    :cond_7
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceLock:I

    :goto_4
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1827
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
