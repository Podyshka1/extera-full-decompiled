.class Lorg/telegram/ui/GroupCallActivity$VolumeSlider;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeSlider"
.end annotation


# instance fields
.field private captured:Z

.field private colorChangeProgress:F

.field private currentColor:I

.field private currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

.field private currentProgress:D

.field private dragging:Z

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private lastUpdateTime:J

.field private oldColor:I

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radii:[F

.field private rect:Landroid/graphics/RectF;

.field private speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private sx:F

.field private sy:F

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field private thumbX:I

.field private volumeAlphas:[F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    .line 792
    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    .line 793
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 780
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint:Landroid/graphics/Paint;

    .line 781
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    .line 782
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    const/16 v2, 0x8

    .line 783
    new-array v2, v2, [F

    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->radii:[F

    .line 784
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x3

    .line 789
    new-array v4, v2, [F

    iput-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    const/4 v4, 0x0

    .line 794
    invoke-virtual {v0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    move-object/from16 v5, p3

    .line 795
    iput-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 796
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x469c4000    # 20000.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    iput-wide v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    const/high16 v5, 0x3f800000    # 1.0f

    .line 797
    iput v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    const/high16 v6, 0x41400000    # 12.0f

    .line 799
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v7, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 801
    new-instance v8, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v9, Lorg/telegram/messenger/R$raw;->speaker:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lorg/telegram/messenger/R$raw;->speaker:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 803
    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 804
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 805
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 806
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-wide v7, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 807
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x5

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    or-int/lit8 v13, v7, 0x10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x42200000    # 40.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v11, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    cmpl-double v7, v11, v9

    if-nez v7, :cond_2

    const/16 v7, 0x11

    goto :goto_2

    :cond_2
    const/16 v7, 0x22

    :goto_2
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 810
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 812
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    .line 813
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 814
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 815
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 816
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 817
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 818
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 819
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I

    move-result v1

    int-to-double v6, v1

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v11

    .line 820
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    cmpl-double v14, v6, v9

    if-lez v14, :cond_3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    :cond_3
    double-to-int v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "%d%%"

    invoke-static {v13, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v7, 0x422c0000    # 43.0f

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :goto_3
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_4

    :cond_5
    move v7, v4

    :goto_4
    invoke-virtual {v1, v6, v4, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 822
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_6

    move v2, v8

    :cond_6
    or-int/lit8 v2, v2, 0x10

    const/4 v6, -0x2

    invoke-static {v6, v6, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 825
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 826
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 827
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v11

    double-to-int v1, v1

    move v2, v4

    .line 830
    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    array-length v7, v6

    if-ge v2, v7, :cond_a

    if-nez v2, :cond_7

    move v7, v4

    goto :goto_6

    :cond_7
    if-ne v2, v3, :cond_8

    const/16 v7, 0x32

    goto :goto_6

    :cond_8
    const/16 v7, 0x96

    :goto_6
    if-le v1, v7, :cond_9

    .line 840
    aput v5, v6, v2

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    .line 842
    aput v7, v6, v2

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method private onSeekBarDrag(DZ)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 929
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 932
    :cond_0
    iput-wide v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    .line 933
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    const-wide v4, 0x40d3880000000000L    # 20000.0

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    const/4 v1, 0x0

    .line 934
    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume_by_admin:Z

    .line 935
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 936
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 937
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->textView:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide/16 v6, 0x0

    cmpl-double v8, v2, v6

    if-lez v8, :cond_1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v6

    :goto_0
    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v1

    const-string v2, "%d%%"

    invoke-static {v5, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_6

    .line 940
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    .line 943
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    :goto_1
    move-object v10, v8

    goto :goto_2

    .line 945
    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-long v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    goto :goto_1

    .line 947
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    if-nez v8, :cond_5

    .line 948
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetscrimPopupWindow(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 949
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetscrimPopupWindow(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 950
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8, v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputscrimPopupWindow(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    .line 952
    :cond_3
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8, v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mdismissAvatarPreview(Lorg/telegram/ui/GroupCallActivity;Z)V

    .line 953
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-virtual {v8}, Lorg/telegram/ui/GroupCallActivity;->canManageCall()Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v1

    goto :goto_3

    :cond_4
    const/4 v10, 0x5

    :goto_3
    invoke-static {v8, v9, v4, v5, v10}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mprocessSelectedOption(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;JI)V

    goto :goto_4

    .line 955
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v9

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/voip/VoIPService;->editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    .line 958
    :cond_6
    :goto_4
    iget-wide v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 959
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    if-nez v2, :cond_9

    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    if-nez v2, :cond_c

    .line 960
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    cmpl-double v4, v4, v6

    const/16 v5, 0x11

    if-nez v4, :cond_a

    move v4, v5

    goto :goto_5

    :cond_a
    const/16 v4, 0x22

    :goto_5
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 961
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v8, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    cmpl-double v4, v8, v6

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    move v1, v5

    :goto_6
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 962
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->speakerDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 963
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_c
    :goto_7
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 969
    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    .line 970
    iget-wide v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    const v2, -0x33a8a9

    .line 971
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    goto :goto_0

    :cond_0
    cmpl-double v4, v2, v4

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-lez v4, :cond_1

    cmpg-double v4, v2, v5

    if-gez v4, :cond_1

    const v2, -0x365ac5

    .line 973
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    goto :goto_0

    :cond_1
    cmpl-double v4, v2, v5

    if-ltz v4, :cond_2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    const v2, -0xa84395

    .line 975
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    goto :goto_0

    :cond_2
    const v2, -0xb25921

    .line 977
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    :goto_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_3

    .line 981
    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    .line 982
    iput v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    goto :goto_1

    .line 984
    :cond_3
    iget v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->oldColor:I

    iget v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    invoke-static {v4, v1, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v4

    .line 985
    iget v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentColor:I

    if-eq v1, v5, :cond_4

    .line 986
    iput v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    .line 987
    iput v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->oldColor:I

    :cond_4
    move v1, v4

    .line 990
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 991
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 992
    iget-wide v6, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->lastUpdateTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x11

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    move-wide v6, v8

    .line 996
    :cond_5
    iput-wide v4, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->lastUpdateTime:J

    .line 997
    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    cmpg-float v4, v1, v3

    if-gez v4, :cond_7

    long-to-float v4, v6

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 998
    iput v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    .line 1000
    iput v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->colorChangeProgress:F

    goto :goto_2

    .line 1002
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1005
    :cond_7
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1006
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->radii:[F

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v8, 0x7

    aput v5, v1, v8

    const/4 v8, 0x6

    aput v5, v1, v8

    const/4 v8, 0x1

    aput v5, v1, v8

    const/4 v9, 0x0

    aput v5, v1, v9

    .line 1007
    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v1, v5, :cond_8

    iget v1, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_3

    :cond_8
    move v1, v3

    .line 1008
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->radii:[F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    const/4 v1, 0x5

    aput v10, v5, v1

    const/4 v1, 0x4

    aput v10, v5, v1

    const/4 v1, 0x3

    aput v10, v5, v1

    const/4 v1, 0x2

    aput v10, v5, v1

    .line 1009
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    iget v10, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5, v2, v2, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1010
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->radii:[F

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v10, v11, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1011
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 1012
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v5, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1014
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentParticipant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I

    move-result v5

    int-to-double v12, v5

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    double-to-int v5, v12

    .line 1015
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    div-int/2addr v12, v1

    add-int/2addr v10, v12

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v10, v12

    .line 1016
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    div-int/2addr v13, v1

    add-int v1, v12, v13

    move v12, v9

    .line 1017
    :goto_4
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    array-length v13, v13

    if-ge v12, v13, :cond_f

    if-nez v12, :cond_9

    .line 1021
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    move v14, v9

    goto :goto_5

    :cond_9
    if-ne v12, v8, :cond_a

    const/high16 v13, 0x41200000    # 10.0f

    .line 1024
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/16 v14, 0x32

    goto :goto_5

    :cond_a
    const/high16 v13, 0x41600000    # 14.0f

    .line 1027
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/16 v14, 0x96

    :goto_5
    const/high16 v15, 0x40000000    # 2.0f

    .line 1029
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    move/from16 v17, v2

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    aget v2, v2, v12

    sub-float v16, v3, v2

    mul-float v15, v15, v16

    move/from16 v18, v3

    .line 1030
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1031
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    int-to-float v3, v10

    sub-float v16, v3, v13

    add-float v4, v16, v15

    int-to-float v8, v1

    sub-float v16, v8, v13

    add-float v9, v16, v15

    add-float/2addr v3, v13

    sub-float/2addr v3, v15

    add-float/2addr v8, v13

    sub-float/2addr v8, v15

    invoke-virtual {v2, v4, v9, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    move v9, v12

    .line 1032
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->rect:Landroid/graphics/RectF;

    const/4 v15, 0x0

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->paint2:Landroid/graphics/Paint;

    const/high16 v13, -0x3db80000    # -50.0f

    move v3, v14

    const/high16 v14, 0x42c80000    # 100.0f

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v2, 0x43340000    # 180.0f

    if-le v5, v3, :cond_c

    .line 1034
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    aget v4, v3, v9

    cmpg-float v8, v4, v18

    if-gez v8, :cond_e

    long-to-float v8, v6

    div-float/2addr v8, v2

    add-float/2addr v4, v8

    .line 1035
    aput v4, v3, v9

    cmpl-float v2, v4, v18

    if-lez v2, :cond_b

    .line 1037
    aput v18, v3, v9

    .line 1039
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 1042
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->volumeAlphas:[F

    aget v4, v3, v9

    cmpl-float v8, v4, v17

    if-lez v8, :cond_e

    long-to-float v8, v6

    div-float/2addr v8, v2

    sub-float/2addr v4, v8

    .line 1043
    aput v4, v3, v9

    cmpg-float v2, v4, v17

    if-gez v2, :cond_d

    .line 1045
    aput v17, v3, v9

    .line 1047
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_e
    :goto_6
    add-int/lit8 v12, v9, 0x1

    move-object/from16 v11, p1

    move/from16 v2, v17

    move/from16 v3, v18

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_f
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 855
    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    const/high16 p2, 0x42400000    # 48.0f

    .line 849
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 850
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-double p1, p1

    iget-wide v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->currentProgress:D

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    return-void
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 865
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sx:F

    .line 866
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sy:F

    return v1

    .line 868
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto/16 :goto_2

    .line 890
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_d

    .line 891
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->captured:Z

    if-nez v0, :cond_5

    .line 892
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sy:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    return v2

    .line 896
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sx:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_d

    .line 897
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->captured:Z

    .line 898
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_d

    .line 900
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    if-gez p1, :cond_3

    .line 902
    iput v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    goto :goto_0

    .line 903
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 904
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    .line 906
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    .line 907
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    .line 912
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    if-eqz v0, :cond_d

    .line 913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    if-gez p1, :cond_6

    .line 915
    iput v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    goto :goto_1

    .line 916
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le p1, v0, :cond_7

    .line 917
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    .line 919
    :cond_7
    :goto_1
    iget p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    int-to-double v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-direct {p0, v3, v4, v2}, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->onSeekBarDrag(DZ)V

    .line 920
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    .line 869
    :cond_8
    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->captured:Z

    .line 870
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 871
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 872
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->sy:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_b

    .line 873
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    if-gez v0, :cond_9

    .line 875
    iput v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    goto :goto_3

    .line 876
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-le v0, v3, :cond_a

    .line 877
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    .line 879
    :cond_a
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    .line 882
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    if-eqz v0, :cond_d

    .line 883
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_c

    .line 884
    iget p1, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->thumbX:I

    int-to-double v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-direct {p0, v3, v4, v1}, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->onSeekBarDrag(DZ)V

    .line 886
    :cond_c
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->dragging:Z

    .line 887
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_d
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 860
    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupCallActivity$VolumeSlider;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
