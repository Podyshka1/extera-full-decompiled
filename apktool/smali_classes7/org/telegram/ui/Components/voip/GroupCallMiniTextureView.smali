.class public Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;
    }
.end annotation


# instance fields
.field activity:Lorg/telegram/ui/GroupCallActivity;

.field animateEnter:Z

.field animateToColor:I

.field public animateToFullscreen:Z

.field public animateToScrimView:Z

.field attached:Z

.field attachedRenderers:Ljava/util/ArrayList;

.field blurredFlippingStub:Landroid/widget/ImageView;

.field call:Lorg/telegram/messenger/ChatObject$Call;

.field private castingScreenDrawable:Landroid/graphics/drawable/Drawable;

.field private checkScale:Z

.field collapseSize:I

.field colorAnimator:Landroid/animation/ValueAnimator;

.field currentAccount:I

.field public drawFirst:Z

.field flipAnimator:Landroid/animation/ValueAnimator;

.field flipHalfReached:Z

.field public forceDetached:Z

.field fullSize:I

.field gradientPaint:Landroid/graphics/Paint;

.field gradientShader:Landroid/graphics/LinearGradient;

.field gridItemsCount:I

.field public hasVideo:Z

.field private hideRunnable:Ljava/lang/Runnable;

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field inPinchToZoom:Z

.field infoContainer:Landroid/widget/FrameLayout;

.field private invalidateFromChild:Z

.field isFullscreenMode:Z

.field lastIconColor:I

.field private lastLandscapeMode:Z

.field private lastSize:I

.field lastSpeakingFrameColor:I

.field private final micIconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private final nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private noRtmpStreamCallback:Ljava/lang/Runnable;

.field private noRtmpStreamTextView:Landroid/widget/TextView;

.field noVideoStubAnimator:Landroid/animation/ValueAnimator;

.field private noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

.field onFirstFrameRunnables:Ljava/util/ArrayList;

.field overlayIconAlpha:F

.field parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

.field public participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

.field private pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

.field pinchCenterX:F

.field pinchCenterY:F

.field pinchScale:F

.field pinchTranslationX:F

.field pinchTranslationY:F

.field private postedNoRtmpStreamCallback:Z

.field public primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

.field private progressToBackground:F

.field public progressToNoVideoStub:F

.field progressToSpeaking:F

.field private rect:Landroid/graphics/Rect;

.field private final screencastIcon:Landroid/widget/ImageView;

.field public secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

.field private showingAsScrimView:Z

.field public showingInFullscreen:Z

.field spanCount:F

.field speakingPaint:Landroid/graphics/Paint;

.field private statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

.field private stopSharingTextView:Landroid/widget/TextView;

.field private swipeToBack:Z

.field private swipeToBackDy:F

.field public tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

.field public textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field thumb:Landroid/graphics/Bitmap;

.field thumbPaint:Landroid/graphics/Paint;

.field private updateNextLayoutAnimated:Z

.field useSpanSize:Z

.field private videoIsPaused:Z

.field private videoIsPausedProgress:F


# direct methods
.method public static synthetic $r8$lambda$EoeGZKcHNOuo9KbOjf4LvgcUt8g(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$updateIconColor$6(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EsfMw3ZEf7AjCYd3MQSZ_8338c4(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$updateAttachState$2(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SFfpU_74IHkHXLIDuMxojlKtNoY(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VC38PU6xI6pRkB5wefZjnvo0kvY(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$startFlipAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hL16xp0fAuzBdHTZ-Dhj8Xgf-GY(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$updateAttachState$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rGVlvWM_XY_M3iHRps3MEGJvDvc(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$saveThumb$4(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tKS1RRr7TPFHU42xlfUSeIha4R4(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$truy39HWBXNbRJaLDlDIWloaTa0(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$saveThumb$5(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcastingScreenDrawable(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->castingScreenDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckScale(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnoRtmpStreamCallback(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnoRtmpStreamTextView(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnoVideoStubLayout(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpausedVideoDrawable(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/CrossOutDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpostedNoRtmpStreamCallback(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->postedNoRtmpStreamCallback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressToBackground(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToBackground:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowingAsScrimView(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstatusIcon(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstopSharingTextView(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeToBackDy(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoIsPaused(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoIsPausedProgress(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPausedProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcheckScale(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinvalidateFromChild(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidateFromChild:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpostedNoRtmpStreamCallback(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->postedNoRtmpStreamCallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprogressToBackground(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToBackground:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoIsPausedProgress(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPausedProgress:F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v7, p3

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->gradientPaint:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 128
    iput v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    .line 141
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamCallback:Ljava/lang/Runnable;

    .line 579
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->rect:Landroid/graphics/Rect;

    .line 174
    iput-object v7, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    .line 175
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    .line 176
    new-instance v0, Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->calls_video:I

    const/4 v5, -0x1

    invoke-direct {v0, v3, v4, v5}, Lorg/telegram/ui/Components/CrossOutDrawable;-><init>(Landroid/content/Context;II)V

    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    const/4 v3, 0x0

    .line 177
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    .line 178
    iget-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    const/high16 v18, 0x40800000    # 4.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v4, v8, v6}, Lorg/telegram/ui/Components/CrossOutDrawable;->setOffsets(FFF)V

    .line 179
    iget-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    const v4, 0x4059999a    # 3.4f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/CrossOutDrawable;->setStrokeWidth(F)V

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->screencast_big:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->castingScreenDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 184
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v0, 0x41500000    # 13.0f

    .line 185
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 186
    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 189
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v4, 0x41700000    # 15.0f

    .line 190
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    sget v6, Lorg/telegram/messenger/R$string;->VoipVideoOnPause:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 194
    new-instance v14, Landroid/text/StaticLayout;

    sget v8, Lorg/telegram/messenger/R$string;->VoipVideoScreenSharingTwoLines:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/high16 v16, 0x43c80000    # 400.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v8, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v17, v8

    .line 195
    iget v8, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v13, v7, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 196
    iget v9, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessagesController;->groupCallVideoMaxParticipants:I

    new-array v11, v3, [Ljava/lang/Object;

    const-string v13, "Participants"

    invoke-static {v13, v9, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v11, v8

    .line 197
    new-instance v8, Landroid/text/StaticLayout;

    sget v13, Lorg/telegram/messenger/R$string;->VoipVideoNotAvailable:I

    new-array v14, v2, [Ljava/lang/Object;

    aput-object v9, v14, v3

    const-string v9, "VoipVideoNotAvailable"

    invoke-static {v9, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v16, v11

    move v11, v13

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v19, v16

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 198
    sget v9, Lorg/telegram/messenger/R$string;->VoipVideoScreenSharing:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, v17

    .line 200
    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 201
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    move-object v11, v0

    .line 203
    new-instance v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;

    move v9, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move v15, v5

    const/4 v5, 0x1

    move-object/from16 v16, v6

    const/4 v6, 0x1

    move/from16 v20, v3

    move/from16 v21, v4

    const/4 v4, 0x0

    move-object/from16 v15, p4

    move-object v9, v10

    move-object v10, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v17}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/content/Context;ZZZZLorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/text/TextPaint;Landroid/text/StaticLayout;Landroid/text/TextPaint;Ljava/lang/String;FLandroid/text/StaticLayout;Lorg/telegram/ui/GroupCallActivity;Ljava/lang/String;F)V

    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    .line 486
    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v2, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v0, v2}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    .line 487
    iput-object v8, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-object/from16 v0, p2

    .line 488
    iput-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attachedRenderers:Ljava/util/ArrayList;

    .line 489
    iput-object v15, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    .line 491
    iget-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v0, v2, v3}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 507
    iget-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->attachBackgroundRenderer()V

    const/4 v0, 0x0

    .line 509
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 510
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 511
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    .line 514
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 516
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0xd

    .line 517
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    const/16 v4, 0xe5

    const/4 v15, -0x1

    .line 518
    invoke-static {v15, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 519
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v9, 0x1

    .line 520
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullTextMaxLines(I)V

    .line 521
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setBuildFullLayout(Z)V

    .line 522
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    const/high16 v27, 0x41000000    # 8.0f

    const/16 v28, 0x0

    const/16 v22, -0x1

    const/high16 v23, -0x40000000    # -2.0f

    const/16 v24, 0x13

    const/high16 v25, 0x42000000    # 32.0f

    const/16 v26, 0x0

    .line 523
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v15, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 526
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 527
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 530
    new-instance v2, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v27, 0x40800000    # 4.0f

    const/16 v22, 0x18

    const/high16 v23, 0x41c00000    # 24.0f

    const/16 v24, 0x0

    const/high16 v25, 0x40800000    # 4.0f

    const/high16 v26, 0x40c00000    # 6.0f

    .line 531
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    .line 534
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 536
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->voicechat_screencast:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v15, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v2, 0x41980000    # 19.0f

    .line 539
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/16 v4, 0x64

    invoke-static {v15, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v2, v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 540
    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$3;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$3;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    .line 549
    sget v5, Lorg/telegram/messenger/R$string;->VoipVideoScreenStopSharing:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 551
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 552
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v4, v7, v0, v10, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 553
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 555
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 556
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda6;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/16 v11, 0x26

    const/16 v12, 0x33

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    .line 565
    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 566
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v0, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 567
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    iget-object v4, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 569
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 570
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 571
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    iget-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoRtmpStreamFromAppOwner:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 574
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->NoRtmpStreamFromAppViewer:I

    move-object/from16 v11, v19

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v0, "NoRtmpStreamFromAppViewer"

    invoke-static {v0, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-static {v10, v10, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static getOrCreate(Ljava/util/ArrayList;Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/messenger/ChatObject$VideoParticipant;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
    .locals 2

    const/4 v0, 0x0

    .line 796
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 797
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {p5, v1}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_1
    if-nez p5, :cond_2

    .line 803
    new-instance p5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-direct {p5, p1, p0, p6, p7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 806
    invoke-virtual {p5, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setPrimaryView(Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 809
    invoke-virtual {p5, p3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setSecondaryView(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;)V

    :cond_4
    if-eqz p4, :cond_5

    .line 812
    invoke-virtual {p5, p4}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setTabletGridView(Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    :cond_5
    return-object p5
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    .line 557
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 558
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->stopScreenCapture()V

    .line 560
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$saveThumb$4(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->thumbs:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v2, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$saveThumb$5(Landroid/graphics/Bitmap;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1479
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 1480
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int/lit16 p2, p2, 0xb4

    const/4 v0, 0x7

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 1481
    new-instance p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startFlipAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1870
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 1880
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipHalfReached:Z

    if-nez v0, :cond_1

    .line 1881
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1882
    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipHalfReached:Z

    .line 1883
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->clearImage()V

    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr p1, v0

    .line 1887
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 1888
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/TextureViewRenderer;->setRotationY(F)V

    return-void
.end method

.method private synthetic lambda$updateAttachState$2(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 921
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x8

    .line 923
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 924
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$updateAttachState$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1169
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    .line 1170
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1171
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateIconColor$6(IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1574
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    .line 1575
    invoke-static {p1, p2, p5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastIconColor:I

    .line 1576
    invoke-static {p3, p4, p5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSpeakingFrameColor:I

    .line 1577
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1578
    iget p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 1579
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_0
    return-void
.end method

.method private loadThumb()V
    .locals 15

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1266
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->thumbs:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v2, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    .line 1267
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setThumb(Landroid/graphics/Bitmap;)V

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 1272
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v3, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-eqz v2, :cond_2

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const v5, -0xd8baa8

    const/4 v6, 0x1

    const v2, -0xded1c6

    const v3, -0xd4a4b3

    const v4, -0xdba79d

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, -0x1

    const/4 v5, 0x1

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v7, -0x1000000

    if-lez v2, :cond_4

    .line 1276
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 1277
    invoke-static {v13, v5}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    if-eqz v13, :cond_3

    .line 1278
    iget-wide v0, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(J)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {v7, v4, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 1279
    :goto_1
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v0, v7, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-static {v0, v7, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-direct {v11, v1, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1280
    iget-object v8, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v10, "50_50_b"

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 1282
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 1283
    invoke-static {v13, v5}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    if-eqz v13, :cond_5

    .line 1284
    iget-wide v0, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(J)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-static {v7, v4, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 1285
    :goto_2
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v0, v7, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-static {v0, v7, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-direct {v11, v1, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1286
    iget-object v8, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v10, "50_50_b"

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_6
    :goto_3
    return-void
.end method

.method private updateIconColor(Z)V
    .locals 8

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1548
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isMutedByMe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1549
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    :goto_0
    move v5, v0

    move v7, v5

    goto :goto_1

    .line 1550
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1551
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 1553
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/4 v1, -0x1

    move v7, v0

    move v5, v1

    .line 1557
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToColor:I

    if-ne v0, v5, :cond_3

    :goto_2
    return-void

    .line 1560
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 1561
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1562
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    if-nez p1, :cond_5

    .line 1567
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    iput v7, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSpeakingFrameColor:I

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 1569
    :cond_5
    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastIconColor:I

    .line 1570
    iget v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSpeakingFrameColor:I

    .line 1571
    iput v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToColor:I

    const/4 p1, 0x2

    .line 1572
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    .line 1573
    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda8;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;IIII)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1582
    iget-object p1, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;

    invoke-direct {v0, p0, v5, v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;II)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1593
    iget-object p1, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 588
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v3, v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 590
    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    add-float/2addr v0, v3

    .line 591
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToScrimView:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 594
    :cond_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 600
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v3, :cond_2

    .line 601
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 602
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 604
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 605
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 595
    :cond_3
    :goto_0
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v3, :cond_4

    const/high16 v3, 0x42b40000    # 90.0f

    .line 596
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v5, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float/2addr v3, v5

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float v4, v2, v4

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 598
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 599
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 592
    :cond_5
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    sub-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 593
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    sub-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 608
    :goto_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-eqz v3, :cond_6

    goto :goto_3

    .line 611
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullAlpha(F)V

    goto :goto_4

    .line 609
    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullAlpha(F)V

    .line 613
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 614
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 616
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    .line 617
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v6, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 618
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 619
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v5, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v5, v2, v5

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    sub-float v4, v2, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 621
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_5

    :cond_9
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float/2addr v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 624
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 626
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz v0, :cond_f

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    if-eqz v0, :cond_e

    .line 628
    iget-boolean v0, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    const v3, 0x3d5a740e

    if-eqz v0, :cond_c

    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_c

    add-float/2addr v4, v3

    .line 629
    iput v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    cmpl-float v0, v4, v2

    if-lez v0, :cond_b

    .line 631
    iput v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    goto :goto_6

    .line 633
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    goto :goto_6

    :cond_c
    if-nez v0, :cond_e

    .line 635
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_e

    sub-float/2addr v0, v3

    .line 636
    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 638
    iput v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    goto :goto_6

    .line 640
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    .line 645
    :cond_e
    :goto_6
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v4, v2, v4

    mul-float/2addr v4, v0

    iget v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    sub-float v3, v2, v3

    mul-float/2addr v4, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 649
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    const v2, 0x3f666666    # 0.9f

    add-float/2addr v0, v2

    .line 650
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 651
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v5, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    add-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v6, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    add-float/2addr v4, v6

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v7, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    sub-float/2addr v5, v7

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v7, v7, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    sub-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 652
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 653
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->roundRadius:F

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 655
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 666
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBack:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    if-ne p2, v0, :cond_1

    .line 667
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    const v2, 0x3f666666    # 0.9f

    add-float/2addr v1, v2

    .line 668
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 669
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 670
    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 671
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 672
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 675
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public forceDetach(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 1450
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetached:Z

    const/4 v0, 0x0

    .line 1451
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->detach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    if-eqz p1, :cond_1

    .line 1455
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz p1, :cond_0

    .line 1456
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1457
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    goto :goto_0

    .line 1460
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1461
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 1466
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->saveThumb()V

    .line 1468
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 1469
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1470
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1473
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1814
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 1815
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1816
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1817
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1819
    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1820
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryView()Lorg/telegram/ui/Components/voip/GroupCallGridCell;
    .locals 1

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    return-object v0
.end method

.method public getRenderBufferBitmap(Lorg/webrtc/GlGenericDrawer$TextureCallback;)V
    .locals 1

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/TextureViewRenderer;->getRenderBufferBitmap(Lorg/webrtc/GlGenericDrawer$TextureCallback;)V

    return-void
.end method

.method public hasImage()Z
    .locals 2

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->stubVisibleProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 1426
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1427
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidateFromChild:Z

    if-nez v0, :cond_0

    .line 1428
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1430
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->getScrimView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-ne v0, v1, :cond_1

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1436
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v0, :cond_2

    .line 1437
    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->invalidate()V

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1439
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1442
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1443
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 1397
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    return v0
.end method

.method public isFullyVisible()Z
    .locals 3

    .line 1411
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1414
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isInsideStopScreenButton(FF)Z
    .locals 2

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->rect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1833
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1827
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1828
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 681
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 683
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 687
    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastLandscapeMode:Z

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    .line 688
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    .line 689
    iput-boolean v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastLandscapeMode:Z

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    .line 691
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 693
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateNextLayoutAnimated:Z

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 698
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_1
    const/4 v0, 0x0

    .line 708
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateNextLayoutAnimated:Z

    .line 710
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v1, :cond_7

    .line 711
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateSize(I)V

    .line 712
    iput v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    .line 713
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v0, :cond_3

    .line 714
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x43a40000    # 328.0f

    .line 715
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 716
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 717
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    .line 718
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_a

    .line 719
    :cond_3
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/high16 v1, 0x42b80000    # 92.0f

    if-nez v0, :cond_5

    .line 720
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 721
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v3, :cond_4

    .line 722
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 724
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_a

    .line 726
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 727
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v3, :cond_6

    .line 728
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 730
    :cond_6
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_a

    .line 732
    :cond_7
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, 0x2

    if-eqz v1, :cond_8

    .line 733
    iput v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    .line 734
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v1, v8

    sub-int/2addr v0, v1

    .line 735
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_a

    .line 736
    :cond_8
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->useSpanSize:Z

    if-eqz v1, :cond_12

    .line 737
    iput v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    .line 739
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v3, 0x6

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v1, :cond_9

    goto :goto_2

    .line 742
    :cond_9
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v3, v8

    .line 745
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v1, :cond_b

    .line 746
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x43ac0000    # 344.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_3
    int-to-float v0, v0

    goto :goto_4

    .line 747
    :cond_b
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v1, :cond_c

    const/high16 v0, 0x43a00000    # 320.0f

    .line 748
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_3

    .line 750
    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/2addr v7, v8

    sub-int/2addr v1, v7

    sget-boolean v7, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v7, :cond_d

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    :cond_d
    add-int/2addr v1, v0

    int-to-float v0, v1

    .line 752
    :goto_4
    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->spanCount:F

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, v0

    .line 754
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v3, :cond_e

    .line 755
    invoke-virtual {v3}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getItemHeight()F

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 756
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_5
    int-to-float v3, v3

    sub-float/2addr v1, v3

    goto :goto_8

    .line 758
    :cond_e
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v3, :cond_f

    div-float/2addr v0, v4

    goto :goto_7

    .line 761
    :cond_f
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x3

    goto :goto_6

    :cond_10
    move v3, v8

    :goto_6
    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 763
    :goto_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_5

    .line 766
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 767
    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_11

    const/high16 v5, 0x41e00000    # 28.0f

    .line 768
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    goto :goto_9

    :cond_11
    move v5, v1

    :goto_9
    float-to-int v7, v5

    .line 770
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateSize(I)V

    .line 771
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-int v1, v1

    .line 773
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    float-to-int v0, v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_a

    .line 775
    :cond_12
    iput v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    .line 776
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 778
    :goto_a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p2, p1

    .line 779
    iget p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSize:I

    if-eq p1, p2, :cond_13

    .line 780
    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSize:I

    .line 781
    new-instance v5, Landroid/graphics/LinearGradient;

    const/high16 p1, 0x42f00000    # 120.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v9, p1

    const/high16 p1, -0x1000000

    const/16 p2, 0x78

    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->gradientShader:Landroid/graphics/LinearGradient;

    .line 782
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 785
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 786
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v4

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public onStatusChanged()V
    .locals 2

    .line 1535
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    const/4 v0, 0x1

    .line 1536
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateIconColor(Z)V

    .line 1537
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1538
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->-$$Nest$mupdateMuteButtonState(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;Z)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    .line 1402
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1403
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setCallback(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;)V

    .line 1405
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setImageView(Lorg/telegram/ui/Components/RLottieImageView;)V

    .line 1407
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    return-void
.end method

.method public runDelayedAnimations()V
    .locals 2

    const/4 v0, 0x0

    .line 1598
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1599
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1601
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public runOnFrameRendered(Ljava/lang/Runnable;)V
    .locals 2

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-wide/16 v0, 0xfa

    .line 1523
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveThumb()V
    .locals 1

    .line 1477
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    new-instance v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->getRenderBufferBitmap(Lorg/webrtc/GlGenericDrawer$TextureCallback;)V

    :cond_0
    return-void
.end method

.method public setAmplitude(D)V
    .locals 1

    .line 1494
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setAmplitude(D)V

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->setAmplitude(D)V

    return-void
.end method

.method public setFullscreenMode(ZZ)V
    .locals 1

    .line 858
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isFullscreenMode:Z

    if-eq v0, p1, :cond_2

    .line 859
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isFullscreenMode:Z

    .line 860
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_2
    return-void
.end method

.method public setPrimaryView(Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V
    .locals 1

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eq v0, p1, :cond_0

    .line 830
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    const/4 p1, 0x1

    .line 831
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    .line 832
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_0
    return-void
.end method

.method public setSecondaryView(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;)V
    .locals 1

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eq v0, p1, :cond_0

    .line 838
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    const/4 p1, 0x1

    .line 839
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    .line 840
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_0
    return-void
.end method

.method public setShowingAsScrimView(ZZ)V
    .locals 0

    .line 845
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    .line 846
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    return-void
.end method

.method public setShowingInFullscreen(ZZ)V
    .locals 1

    .line 850
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eq v0, p1, :cond_0

    .line 851
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    const/4 p1, 0x1

    .line 852
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    .line 853
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_0
    return-void
.end method

.method public setSwipeToBack(ZF)V
    .locals 1

    .line 1511
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBack:Z

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1512
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBack:Z

    .line 1513
    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    .line 1514
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1515
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    return-void
.end method

.method public setTabletGridView(Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V
    .locals 1

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eq v0, p1, :cond_0

    .line 819
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    const/4 p1, 0x1

    .line 820
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_0
    return-void
.end method

.method public setViews(Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V
    .locals 0

    .line 1488
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    .line 1489
    iput-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    .line 1490
    iput-object p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 791
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setZoom(ZFFFFF)V
    .locals 1

    .line 1499
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchScale:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterX:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterY:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationX:F

    cmpl-float v0, v0, p5

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationY:F

    cmpl-float v0, v0, p6

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1500
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->inPinchToZoom:Z

    .line 1501
    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchScale:F

    .line 1502
    iput p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterX:F

    .line 1503
    iput p4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterY:F

    .line 1504
    iput p5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationX:F

    .line 1505
    iput p6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationY:F

    .line 1506
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startFlipAnimation()V
    .locals 8

    .line 1841
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1844
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipHalfReached:Z

    .line 1846
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1847
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    goto :goto_0

    .line 1849
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1851
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1852
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1854
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 1855
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1856
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1858
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 1860
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1863
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1864
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1866
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, 0x2

    .line 1868
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    .line 1869
    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1891
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$8;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1904
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1905
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1906
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateAttachState(Z)V
    .locals 23

    move-object/from16 v0, p0

    .line 866
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetached:Z

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 869
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 870
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x42100000    # 36.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x41a80000    # 21.0f

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 871
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 873
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v1, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v3, :cond_6

    :cond_3
    if-eqz v1, :cond_4

    .line 875
    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    goto :goto_1

    .line 876
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v1, :cond_5

    .line 877
    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    goto :goto_1

    .line 879
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getVideoParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 883
    :cond_6
    :goto_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-eqz v1, :cond_14

    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v10, :cond_14

    .line 884
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v9

    goto :goto_2

    :cond_7
    move v1, v2

    .line 885
    :goto_2
    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->paused:Z

    if-nez v10, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v10, :cond_8

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v11, :cond_9

    iget-object v11, v10, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v10, v10, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-static {v11, v10, v12}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v11, v10, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-nez v11, :cond_9

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v10, v10, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eq v11, v10, :cond_9

    :cond_8
    move v1, v9

    :cond_9
    if-nez v1, :cond_a

    .line 888
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v10, :cond_24

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v10, :cond_24

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v10, :cond_24

    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    if-nez v10, :cond_24

    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToScrimView:Z

    if-nez v10, :cond_24

    .line 889
    :cond_a
    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    .line 891
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->saveThumb()V

    .line 893
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v10

    if-gtz v10, :cond_b

    move v10, v9

    goto :goto_3

    :cond_b
    move v10, v2

    .line 894
    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v11, v11, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    if-nez v11, :cond_d

    if-eqz v1, :cond_d

    if-eqz v10, :cond_c

    .line 897
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->detach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 899
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;

    invoke-direct {v5, v0, v0, v10}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)V

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v10, 0x96

    .line 911
    invoke-virtual {v1, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    .line 913
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v5, v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inLayout:Z

    if-eqz v5, :cond_f

    .line 915
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_e

    .line 916
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 917
    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    .line 919
    :cond_e
    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v10, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;ZLandroid/view/View;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_f
    if-eqz v10, :cond_10

    .line 928
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 930
    :cond_10
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setVisibility(I)V

    :goto_4
    if-eqz v10, :cond_11

    .line 933
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->detach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 934
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->release()V

    .line 938
    :cond_11
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v1, :cond_12

    .line 939
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 940
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v5, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v6, v5}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    goto :goto_6

    .line 943
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 944
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v10, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v5, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v10, v5}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 948
    :cond_13
    :goto_6
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    .line 950
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_24

    .line 951
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 952
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto/16 :goto_f

    :cond_14
    if-nez v1, :cond_24

    .line 956
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_15

    :goto_7
    return-void

    .line 959
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v1, :cond_16

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v10, :cond_16

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v10, :cond_16

    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v10, :cond_24

    :cond_16
    if-eqz v1, :cond_17

    .line 961
    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    goto :goto_8

    .line 962
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v1, :cond_18

    .line 963
    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getVideoParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    goto :goto_8

    .line 964
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v1, :cond_19

    .line 965
    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    .line 969
    :cond_19
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v10, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v11, :cond_1b

    .line 970
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v10, v10, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v1

    if-ne v1, v3, :cond_1a

    :goto_9
    move v1, v9

    goto :goto_a

    :cond_1a
    move v1, v2

    goto :goto_a

    .line 972
    :cond_1b
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v12, v11, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-nez v12, :cond_1c

    iget-object v12, v11, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-ne v1, v12, :cond_1a

    :cond_1c
    iget-boolean v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-static {v10, v1, v11}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_9

    .line 974
    :goto_a
    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v10, :cond_1d

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v12, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v11, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v10, v12, v11}, Lorg/telegram/messenger/voip/VoIPService;->isFullscreen(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)Z

    move-result v10

    if-nez v10, :cond_24

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v12, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v11, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v10, v12, v11}, Lorg/telegram/messenger/voip/VoIPService;->isFullscreen(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)Z

    move-result v10

    if-nez v10, :cond_24

    if-eqz v1, :cond_24

    .line 983
    :cond_1d
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    .line 985
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 986
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    goto :goto_b

    .line 988
    :cond_1e
    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-direct {v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    .line 990
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setCallback(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;)V

    .line 991
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setImageView(Lorg/telegram/ui/Components/RLottieImageView;)V

    .line 992
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateIconColor(Z)V

    .line 994
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1f

    .line 995
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 996
    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    .line 998
    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_20

    .line 999
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    const/16 v10, 0x33

    const/16 v11, 0x2e

    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    .line 1001
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setVisibility(I)V

    goto :goto_c

    .line 1002
    :cond_20
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_21

    .line 1003
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setVisibility(I)V

    .line 1006
    :cond_21
    :goto_c
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    .line 1007
    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    .line 1008
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1009
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_22

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v1, :cond_22

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasImage()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1010
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1011
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1012
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1013
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    .line 1014
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    .line 1015
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$5;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$5;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v10, 0x64

    .line 1021
    invoke-virtual {v1, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1022
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    goto :goto_d

    .line 1024
    :cond_22
    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1025
    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1026
    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1030
    :goto_d
    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->loadThumb()V

    .line 1031
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v5, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-eqz v5, :cond_23

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v5, :cond_23

    move v5, v2

    goto :goto_e

    :cond_23
    move v5, v4

    :goto_e
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move v1, v2

    move v5, v9

    goto :goto_10

    :cond_24
    :goto_f
    move/from16 v1, p1

    move v5, v2

    .line 1035
    :goto_10
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v11, v11, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-ne v10, v11, :cond_25

    .line 1036
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_26

    .line 1037
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    .line 1041
    :cond_25
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_26

    .line 1042
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    :cond_26
    :goto_11
    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz v10, :cond_54

    .line 1053
    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v10, :cond_28

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v10, v10, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v10, :cond_27

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v10, :cond_28

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v10, :cond_28

    :cond_27
    move v10, v9

    goto :goto_12

    :cond_28
    move v10, v2

    .line 1054
    :goto_12
    iget-boolean v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    const/4 v12, -0x1

    if-eqz v11, :cond_29

    :goto_13
    move v13, v2

    move v14, v13

    move v11, v8

    :goto_14
    move v10, v12

    goto/16 :goto_18

    .line 1056
    :cond_29
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v11, :cond_2b

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v13, :cond_2b

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v13, v13, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v13, :cond_2b

    :cond_2a
    move v10, v2

    move v13, v10

    :goto_15
    move v14, v13

    move v11, v8

    goto :goto_18

    .line 1058
    :cond_2b
    iget-boolean v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    if-eqz v13, :cond_2c

    goto :goto_13

    :cond_2c
    const/high16 v13, 0x42a00000    # 80.0f

    if-eqz v11, :cond_2d

    .line 1060
    iget-object v14, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v14, :cond_2d

    .line 1061
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    :goto_16
    move v13, v2

    goto :goto_15

    .line 1062
    :cond_2d
    iget-object v14, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    const/high16 v15, 0x42380000    # 46.0f

    if-eqz v14, :cond_2f

    if-eqz v10, :cond_2f

    if-eqz v14, :cond_2e

    .line 1066
    iget v10, v14, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->spanCount:I

    int-to-float v10, v10

    .line 1067
    iget-object v11, v14, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->gridAdapter:Lorg/telegram/ui/GroupCallTabletGridAdapter;

    invoke-virtual {v11}, Lorg/telegram/ui/GroupCallTabletGridAdapter;->getItemCount()I

    move-result v11

    move v14, v9

    move v13, v11

    :goto_17
    move v11, v10

    goto :goto_14

    .line 1069
    :cond_2e
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_16

    .line 1071
    :cond_2f
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v10, :cond_30

    if-eqz v11, :cond_31

    :cond_30
    iget-boolean v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isFullscreenMode:Z

    if-nez v11, :cond_33

    :cond_31
    if-eqz v10, :cond_32

    .line 1075
    iget v10, v10, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->spanCount:I

    int-to-float v10, v10

    move v13, v2

    move v14, v9

    goto :goto_17

    .line 1077
    :cond_32
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_16

    :cond_33
    if-eqz v10, :cond_2a

    .line 1080
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_16

    .line 1084
    :goto_18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_38

    .line 1085
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v10, :cond_35

    if-nez v5, :cond_35

    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->useSpanSize:Z

    if-ne v4, v14, :cond_35

    if-eqz v14, :cond_34

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->spanCount:F

    cmpl-float v4, v4, v11

    if-nez v4, :cond_35

    :cond_34
    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->gridItemsCount:I

    if-eq v4, v13, :cond_38

    .line 1086
    :cond_35
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v14, :cond_36

    goto :goto_19

    :cond_36
    move v12, v10

    .line 1087
    :goto_19
    iput v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1088
    iput-boolean v14, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->useSpanSize:Z

    .line 1089
    iput v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->spanCount:F

    .line 1090
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    if-eqz v1, :cond_37

    .line 1092
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateToLayout()V

    .line 1093
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateNextLayoutAnimated:Z

    goto :goto_1a

    .line 1095
    :cond_37
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->requestLayout()V

    .line 1097
    :goto_1a
    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1098
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 1099
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    .line 1102
    :cond_38
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v5, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v5, :cond_39

    iget-boolean v4, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-nez v4, :cond_39

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 1103
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 1104
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v4, v9}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    .line 1105
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v4, v9}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    goto :goto_1b

    .line 1107
    :cond_39
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v4, v2}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    .line 1108
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v4, v9}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    .line 1109
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v4, v2}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    .line 1111
    :goto_1b
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->updateRotation()V

    .line 1113
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v4, :cond_3a

    .line 1114
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/16 v5, 0x2d0

    invoke-virtual {v4, v5}, Lorg/webrtc/TextureViewRenderer;->setMaxTextureSize(I)V

    goto :goto_1c

    .line 1116
    :cond_3a
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v4, v2}, Lorg/webrtc/TextureViewRenderer;->setMaxTextureSize(I)V

    .line 1121
    :goto_1c
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v5, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v4, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-static {v5, v4, v10}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v5, v4, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-nez v5, :cond_3b

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eq v5, v4, :cond_3b

    goto :goto_1d

    :cond_3b
    move v4, v9

    goto/16 :goto_21

    .line 1122
    :cond_3c
    :goto_1d
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 1123
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    .line 1127
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 1128
    iget v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1129
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-virtual {v5, v10, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 1130
    invoke-static {v4, v2}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 1131
    invoke-static {v4, v9}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    :goto_1e
    move-object/from16 v21, v4

    move-object/from16 v17, v5

    goto :goto_1f

    .line 1134
    :cond_3d
    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 1135
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-virtual {v5, v10, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1136
    invoke-static {v4, v2}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 1137
    invoke-static {v4, v9}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    goto :goto_1e

    .line 1141
    :goto_1f
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v10, :cond_3e

    .line 1143
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    iget-object v10, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    const-string v11, "50_50"

    invoke-virtual {v5, v10, v6, v11}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    if-eqz v5, :cond_3e

    move-object/from16 v19, v5

    goto :goto_20

    :cond_3e
    move-object/from16 v19, v4

    .line 1148
    :goto_20
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1149
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-direct {v5, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const-string v18, "50_50_b"

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    move v4, v2

    :goto_21
    if-eqz v1, :cond_3f

    .line 1153
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v5, :cond_3f

    iget-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v5, :cond_3f

    if-nez v4, :cond_3f

    move v5, v9

    goto :goto_22

    :cond_3f
    move v5, v2

    .line 1155
    :goto_22
    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eq v4, v10, :cond_46

    if-nez v5, :cond_46

    .line 1156
    iput-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    .line 1158
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_40

    .line 1159
    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1160
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_40
    if-eqz v1, :cond_43

    .line 1163
    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-nez v4, :cond_41

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_41

    .line 1164
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1167
    :cond_41
    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    iget-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v5, :cond_42

    move v5, v7

    goto :goto_23

    :cond_42
    move v5, v8

    :goto_23
    new-array v3, v3, [F

    aput v4, v3, v2

    aput v5, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    .line 1168
    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1173
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1182
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_26

    .line 1184
    :cond_43
    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v3, :cond_44

    move v4, v7

    goto :goto_24

    :cond_44
    move v4, v8

    :goto_24
    iput v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    .line 1185
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    if-eqz v3, :cond_45

    const/16 v3, 0x8

    goto :goto_25

    :cond_45
    move v3, v2

    :goto_25
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1187
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1190
    :goto_26
    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v3, :cond_46

    .line 1191
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->-$$Nest$mupdateMuteButtonState(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;Z)V

    .line 1195
    :cond_46
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v3, :cond_47

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1196
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v5, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    .line 1199
    :cond_47
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setParticipant(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 1200
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_48

    .line 1201
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->-$$Nest$mupdateMuteButtonState(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;Z)V

    .line 1205
    :cond_48
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v3, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-eqz v3, :cond_49

    .line 1206
    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v1, :cond_4a

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    if-eqz v1, :cond_4a

    :goto_27
    move v2, v9

    goto :goto_28

    .line 1210
    :cond_49
    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v1, :cond_4a

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    if-eqz v1, :cond_4a

    goto :goto_27

    .line 1214
    :cond_4a
    :goto_28
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPaused:Z

    if-eq v1, v2, :cond_4c

    .line 1215
    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPaused:Z

    .line 1216
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPaused:Z

    if-eqz v2, :cond_4b

    move v8, v7

    :cond_4b
    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1217
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1220
    :cond_4c
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->paused:Z

    if-nez v1, :cond_50

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-nez v1, :cond_4d

    goto/16 :goto_29

    .line 1236
    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1237
    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->loadThumb()V

    .line 1239
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v1, :cond_4f

    .line 1240
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 1241
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v3, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    goto/16 :goto_2b

    .line 1243
    :cond_4f
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 1244
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v3, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v2, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v3, v2, v4, v6}, Lorg/telegram/messenger/voip/VoIPService;->addRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 1245
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v3, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v2, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v3, v2, v4, v6}, Lorg/telegram/messenger/voip/VoIPService;->addRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 1247
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_53

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_53

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v1

    if-nez v1, :cond_53

    .line 1248
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->postedNoRtmpStreamCallback:Z

    if-nez v1, :cond_53

    .line 1249
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1250
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->postedNoRtmpStreamCallback:Z

    goto :goto_2b

    .line 1221
    :cond_50
    :goto_29
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v1, :cond_51

    .line 1222
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 1223
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v2, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v6, v2}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    goto :goto_2a

    .line 1225
    :cond_51
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 1226
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v3, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v2, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 1227
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v3, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v2, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    .line 1229
    :cond_52
    :goto_2a
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->paused:Z

    if-eqz v1, :cond_53

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1230
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->saveThumb()V

    .line 1231
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Lorg/webrtc/TextureViewRenderer;->clearFirstFrame()V

    .line 1232
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1233
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1256
    :cond_53
    :goto_2b
    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateIconColor(Z)V

    .line 1259
    :cond_54
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateInfo()V

    return-void
.end method

.method public updateInfo()V
    .locals 3

    .line 1294
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-nez v0, :cond_0

    return-void

    .line 1300
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 1301
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1302
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1303
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1305
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1307
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1311
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public updatePosition(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V
    .locals 8

    .line 1319
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToScrimView:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetached:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    .line 1322
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    .line 1323
    iget v1, p4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    .line 1324
    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 1351
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v2, :cond_6

    .line 1352
    invoke-virtual {v2, p3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->isRemoving(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1353
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1354
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_4

    .line 1355
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    if-nez p1, :cond_3

    .line 1356
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1358
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setAlpha(F)V

    move v1, v5

    goto :goto_0

    .line 1361
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setAlpha(F)V

    .line 1362
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    if-nez p1, :cond_5

    .line 1363
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1367
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1368
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v5, v1

    mul-float/2addr p1, v5

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1369
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v5

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    return-void

    .line 1370
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p3, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v2, :cond_15

    .line 1373
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    const/4 v6, 0x1

    if-eqz v2, :cond_a

    if-eqz p3, :cond_a

    .line 1374
    sget-boolean v7, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v7, v7, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v7, :cond_8

    move v0, v6

    :cond_8
    if-eqz v0, :cond_9

    move-object p3, v2

    :cond_9
    if-eqz v0, :cond_c

    :goto_1
    move-object p1, p2

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_b

    move-object p3, v2

    :cond_b
    if-eqz v2, :cond_c

    goto :goto_1

    .line 1381
    :cond_c
    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1382
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1383
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    .line 1385
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    if-nez p1, :cond_15

    .line 1386
    sget-boolean p1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez p1, :cond_d

    .line 1387
    iput-boolean v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    sub-float/2addr v5, v1

    .line 1388
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p1

    mul-float/2addr v5, p1

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 1389
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_15

    .line 1390
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 1325
    :cond_e
    :goto_3
    iget-object p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    const/4 v0, 0x0

    if-nez p3, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v2, :cond_f

    goto :goto_4

    .line 1337
    :cond_f
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1338
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5

    .line 1326
    :cond_10
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v2, :cond_11

    move-object p3, v2

    :cond_11
    if-eqz v2, :cond_12

    move-object p1, p2

    .line 1328
    :cond_12
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 1329
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p3, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p3, p1

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p3, p1

    sub-float p1, v5, v1

    mul-float/2addr p2, p1

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 1334
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr p3, p1

    add-float/2addr p3, v0

    .line 1335
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 1341
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    .line 1343
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz p1, :cond_13

    .line 1344
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setAlpha(F)V

    .line 1346
    :cond_13
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_14

    .line 1347
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 1348
    :cond_14
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    if-nez p1, :cond_15

    .line 1349
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_15
    :goto_6
    return-void
.end method

.method public updateSize(I)V
    .locals 2

    .line 1608
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1609
    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->collapseSize:I

    if-eq v1, p1, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->fullSize:I

    if-eq v1, v0, :cond_4

    if-lez v0, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    .line 1611
    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->collapseSize:I

    :cond_2
    if-eqz v0, :cond_3

    .line 1614
    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->fullSize:I

    .line 1616
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullLayoutAdditionalWidth(II)V

    :cond_4
    return-void
.end method
