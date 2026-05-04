.class public abstract Lorg/telegram/ui/ProfileActivity$AvatarImageView;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvatarImageView"
.end annotation


# static fields
.field public static CROSSFADE_PROGRESS:Landroid/util/Property;


# instance fields
.field private actionsSize:I

.field private animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private avatarScale:F

.field avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

.field private blurEnabled:Z

.field private blurSizeFraction:F

.field public bounceScale:F

.field public final clipPath:Landroid/graphics/Path;

.field private crossfadeProgress:F

.field public drawAvatar:Z

.field public drawForeground:Z

.field private drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

.field public foregroundAlpha:F

.field public foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public hasStories:Z

.field private invalidateCallback:Ljava/lang/Runnable;

.field public isMetaballWorking:Z

.field private isPulledDown:Z

.field private final placeholderPaint:Landroid/graphics/Paint;

.field progressToExpand:F

.field private progressToInsets:F

.field private final rect:Landroid/graphics/RectF;

.field public roundRadiusCollapse:I

.field private roundRadiusExpand:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcrossfadeProgress(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->crossfadeProgress:F

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 968
    new-instance v0, Lorg/telegram/ui/ProfileActivity$AvatarImageView$1;

    const-string v1, "crossfadeProgress"

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->CROSSFADE_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 952
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 917
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->isMetaballWorking:Z

    .line 918
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->roundRadiusCollapse:I

    .line 919
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->roundRadiusExpand:I

    .line 920
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->actionsSize:I

    .line 923
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->clipPath:Landroid/graphics/Path;

    .line 924
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->rect:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 926
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 927
    iput v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->bounceScale:F

    .line 935
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    .line 940
    iput v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToInsets:F

    const/4 v0, 0x0

    .line 1203
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidateCallback:Ljava/lang/Runnable;

    const/4 v1, 0x2

    .line 953
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 954
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 955
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 956
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public clearForeground()V
    .locals 1

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    .line 1013
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1014
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_1

    .line 1015
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 v0, 0x0

    .line 1016
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    :cond_1
    const/4 v0, 0x0

    .line 1018
    iput v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    .line 1019
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public createBlurEffect(I)V
    .locals 0

    .line 947
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->actionsSize:I

    const/4 p1, 0x1

    .line 948
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->blurEnabled:Z

    return-void
.end method

.method public drawForeground(Z)V
    .locals 0

    .line 1180
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    return-void
.end method

.method public getForegroundAlpha()F
    .locals 1

    .line 1000
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    return v0
.end method

.method public getPrevFragment()Lorg/telegram/ui/Components/ChatActivityInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoundRadiusForExpand()I
    .locals 2

    .line 1038
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->blurEnabled:Z

    if-nez v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getRoundRadius()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 1041
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->roundRadiusExpand:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1212
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1216
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidateCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1217
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 1231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 1232
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidateCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1233
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    .line 1223
    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1224
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidateCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1225
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public listenInvalidate(Ljava/lang/Runnable;)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidateCallback:Ljava/lang/Runnable;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1033
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onAttachedToWindow()V

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1023
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onDetachedFromWindow()V

    .line 1024
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1025
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 v0, 0x0

    .line 1027
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    .line 1077
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1078
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1079
    iget-object v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 1080
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->blurEnabled:Z

    if-eqz v4, :cond_0

    iget v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->blurSizeFraction:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 1085
    iget-object v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ProfileGalleryView;->getBlurDrawer()Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move/from16 v23, v5

    move-object v5, v4

    move/from16 v4, v23

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 1089
    :goto_2
    iget-boolean v8, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->hasStories:Z

    if-eqz v8, :cond_3

    const/high16 v8, 0x40600000    # 3.5f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    goto :goto_3

    :cond_3
    move v8, v7

    .line 1090
    :goto_3
    iget v9, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToExpand:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    mul-float/2addr v8, v9

    .line 1091
    iget v9, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToInsets:F

    iget v11, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    sub-float v11, v10, v11

    mul-float/2addr v9, v11

    mul-float/2addr v8, v9

    .line 1093
    iget-object v9, v2, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    goto :goto_4

    :cond_4
    iget-object v9, v2, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1095
    :goto_4
    iget v11, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->roundRadiusExpand:I

    if-lez v11, :cond_5

    .line 1097
    iget-object v12, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    .line 1098
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v13, v0

    sub-float/2addr v13, v8

    int-to-float v14, v3

    sub-float/2addr v14, v8

    invoke-virtual {v12, v8, v8, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1099
    iget-object v13, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->clipPath:Landroid/graphics/Path;

    int-to-float v11, v11

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v12, v11, v11, v14}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1100
    iget-object v11, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1103
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1104
    iget v11, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->bounceScale:F

    int-to-float v12, v0

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v12, v13

    int-to-float v15, v3

    move/from16 v16, v10

    div-float v10, v15, v13

    invoke-virtual {v1, v11, v11, v14, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz v4, :cond_7

    .line 1107
    iget-boolean v10, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->isPulledDown:Z

    if-eqz v10, :cond_6

    .line 1108
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_5

    .line 1110
    :cond_6
    iget v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->actionsSize:I

    int-to-float v0, v0

    iget v3, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarScale:F

    div-float/2addr v0, v3

    iget v3, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->blurSizeFraction:F

    invoke-static {v7, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    sub-float/2addr v15, v0

    float-to-int v3, v15

    .line 1115
    :cond_7
    :goto_5
    iget-object v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_9

    .line 1116
    iget v10, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->crossfadeProgress:F

    sub-float v11, v16, v10

    mul-float v11, v11, v16

    cmpl-float v14, v10, v7

    if-lez v14, :cond_8

    .line 1119
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    .line 1120
    iget-object v14, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v14

    .line 1121
    iget-object v15, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v15

    move/from16 v17, v13

    .line 1122
    iget-object v13, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v13

    move/from16 v18, v7

    .line 1123
    iget-object v7, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v7

    const/16 v19, 0x0

    .line 1124
    iget-object v6, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    mul-float v20, v8, v17

    move/from16 v21, v4

    sub-float v4, v12, v20

    move-object/from16 v22, v5

    int-to-float v5, v3

    sub-float v5, v5, v20

    invoke-virtual {v6, v8, v8, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1125
    iget-object v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1126
    iget-object v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1127
    iget-object v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v0, v14, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1128
    iget-object v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    goto :goto_6

    :cond_8
    move/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v18, v7

    move/from16 v17, v13

    const/16 v19, 0x0

    :goto_6
    move v7, v11

    goto :goto_7

    :cond_9
    move/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v18, v7

    move/from16 v17, v13

    const/16 v19, 0x0

    move/from16 v7, v16

    :goto_7
    if-eqz v9, :cond_d

    cmpl-float v0, v7, v18

    if-lez v0, :cond_d

    .line 1131
    iget v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    cmpg-float v0, v0, v16

    if-ltz v0, :cond_a

    iget-boolean v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    if-nez v0, :cond_d

    :cond_a
    mul-float v13, v8, v17

    sub-float v0, v12, v13

    int-to-float v4, v3

    sub-float/2addr v4, v13

    .line 1132
    invoke-virtual {v9, v8, v8, v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1133
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v0

    mul-float v4, v0, v7

    .line 1134
    invoke-virtual {v9, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1135
    iget-boolean v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    if-eqz v4, :cond_c

    .line 1136
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v4

    aget v4, v4, v19

    if-eqz v21, :cond_b

    move/from16 v5, v19

    .line 1138
    invoke-virtual {v9, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1140
    :cond_b
    invoke-virtual {v9, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    if-eqz v21, :cond_c

    .line 1142
    invoke-virtual {v9, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1145
    :cond_c
    invoke-virtual {v9, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1147
    :cond_d
    iget v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    cmpl-float v0, v0, v18

    if-lez v0, :cond_f

    iget-boolean v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    if-eqz v0, :cond_f

    cmpl-float v0, v7, v18

    if-lez v0, :cond_f

    .line 1148
    iget-object v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1149
    iget-object v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    mul-float v13, v8, v17

    sub-float v4, v12, v13

    int-to-float v5, v3

    sub-float/2addr v5, v13

    invoke-virtual {v0, v8, v8, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1150
    iget-object v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    mul-float/2addr v4, v7

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1151
    iget-object v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_8

    .line 1153
    :cond_e
    iget-object v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v3

    move/from16 v5, v18

    invoke-virtual {v0, v5, v5, v12, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1154
    iget-object v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    iget v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    mul-float/2addr v4, v7

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1155
    iget-object v0, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    const/16 v19, 0x0

    aget v0, v0, v19

    .line 1156
    iget-object v4, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->rect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object v5, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v0, v0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_f
    :goto_8
    if-eqz v21, :cond_11

    int-to-float v0, v3

    add-float v3, v8, v0

    .line 1161
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1162
    iget-boolean v3, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->isPulledDown:Z

    if-nez v3, :cond_10

    invoke-virtual/range {v22 .. v22}, Lorg/telegram/ui/Components/ProfileGalleryBlurView;->isUsingRenderNode()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v3

    if-eqz v3, :cond_10

    move/from16 v6, v16

    goto :goto_9

    :cond_10
    iget v3, v2, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->blurSizeFraction:F

    sub-float v10, v16, v3

    move v6, v10

    :goto_9
    mul-float v8, v8, v17

    sub-float v3, v12, v8

    sub-float v4, v0, v8

    const/4 v5, 0x1

    move-object/from16 v0, v22

    .line 1163
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/ProfileGalleryBlurView;->draw(Landroid/graphics/Canvas;Lorg/telegram/ui/ProfileActivity$AvatarImageView;FFZFF)V

    .line 1166
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setAnimateFromImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->animateFromImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method

.method public setAvatarsViewPager(Lorg/telegram/ui/Components/ProfileGalleryView;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    return-void
.end method

.method public setBlurRadiusProgressForExpand(FFZ)V
    .locals 0

    .line 1055
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->blurSizeFraction:F

    .line 1056
    iput p2, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarScale:F

    .line 1057
    iput-boolean p3, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->isPulledDown:Z

    return-void
.end method

.method public setCrossfadeProgress(F)V
    .locals 0

    .line 964
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->crossfadeProgress:F

    .line 965
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setForegroundAlpha(F)V
    .locals 0

    .line 1004
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    .line 1005
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setForegroundImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 982
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz p1, :cond_0

    .line 983
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 p1, 0x0

    .line 984
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    :cond_0
    return-void
.end method

.method public setForegroundImageDrawable(Lorg/telegram/messenger/ImageReceiver$BitmapHolder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p1, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 992
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 v0, 0x0

    .line 994
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 996
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    return-void
.end method

.method public setHasStories(Z)V
    .locals 1

    .line 1188
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->hasStories:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1191
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->hasStories:Z

    .line 1192
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setProgressToExpand(F)V
    .locals 1

    .line 1196
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToExpand:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1199
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToExpand:F

    .line 1200
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setProgressToStoriesInsets(F)V
    .locals 1

    .line 1170
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToInsets:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1173
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToInsets:F

    .line 1175
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 1

    .line 1071
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method

.method public setRoundRadiusCollapse(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1061
    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->isMetaballWorking:Z

    .line 1062
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->roundRadiusCollapse:I

    .line 1063
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->roundRadiusCollapse:I

    if-eq v0, p1, :cond_0

    .line 1065
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRoundRadiusForExpand(I)V
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->blurEnabled:Z

    if-nez v0, :cond_0

    .line 1047
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setRoundRadius(I)V

    return-void

    .line 1049
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->roundRadiusExpand:I

    .line 1050
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setRoundRadius(I)V

    return-void
.end method
