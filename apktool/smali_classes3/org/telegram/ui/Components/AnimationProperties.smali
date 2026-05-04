.class public abstract Lorg/telegram/ui/Components/AnimationProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AnimationProperties$IntProperty;,
        Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
    }
.end annotation


# static fields
.field public static final CLIPPING_IMAGE_VIEW_PROGRESS:Landroid/util/Property;

.field public static final CLIP_DIALOG_CELL_PROGRESS:Landroid/util/Property;

.field public static final COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

.field public static final IMAGE_RECEIVER_ALPHA:Landroid/util/Property;

.field public static final PAINT_ALPHA:Landroid/util/Property;

.field public static final PAINT_COLOR:Landroid/util/Property;

.field public static final PHOTO_VIEWER_ANIMATION_VALUE:Landroid/util/Property;

.field public static final SHAPE_DRAWABLE_ALPHA:Landroid/util/Property;

.field public static overshootInterpolator:Landroid/view/animation/OvershootInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3ff33333    # 1.9f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lorg/telegram/ui/Components/AnimationProperties;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 45
    new-instance v0, Lorg/telegram/ui/Components/AnimationProperties$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimationProperties$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    .line 57
    new-instance v0, Lorg/telegram/ui/Components/AnimationProperties$2;

    const-string v2, "color"

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/AnimationProperties$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_COLOR:Landroid/util/Property;

    .line 69
    new-instance v0, Lorg/telegram/ui/Components/AnimationProperties$3;

    const-string v2, "currentAlpha"

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/AnimationProperties$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimationProperties;->IMAGE_RECEIVER_ALPHA:Landroid/util/Property;

    .line 81
    new-instance v0, Lorg/telegram/ui/Components/AnimationProperties$4;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimationProperties$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    .line 93
    new-instance v0, Lorg/telegram/ui/Components/AnimationProperties$5;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimationProperties$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimationProperties;->SHAPE_DRAWABLE_ALPHA:Landroid/util/Property;

    .line 105
    new-instance v0, Lorg/telegram/ui/Components/AnimationProperties$6;

    const-string v1, "animationProgress"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimationProperties$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimationProperties;->CLIPPING_IMAGE_VIEW_PROGRESS:Landroid/util/Property;

    .line 117
    new-instance v0, Lorg/telegram/ui/Components/AnimationProperties$7;

    const-string v1, "animationValue"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimationProperties$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimationProperties;->PHOTO_VIEWER_ANIMATION_VALUE:Landroid/util/Property;

    .line 129
    new-instance v0, Lorg/telegram/ui/Components/AnimationProperties$8;

    const-string v1, "clipProgress"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimationProperties$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimationProperties;->CLIP_DIALOG_CELL_PROGRESS:Landroid/util/Property;

    return-void
.end method
